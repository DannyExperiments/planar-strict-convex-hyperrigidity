#!/usr/bin/env python3
"""Static checks that are useful before a real LaTeX compilation."""

from __future__ import annotations

import re
import sys
from pathlib import Path


def fail(message: str) -> None:
    print(f"tex-sanity: FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


root = Path(__file__).resolve().parents[1]
tex_path = root / "paper" / "planar_strict_convex_hyperrigidity.tex"
text = tex_path.read_text(encoding="utf-8")

if r"\documentclass[11pt,a4paper]{amsart}" not in text:
    fail("the paper is not using the required amsart/a4paper class")
if r"\usepackage[margin=1in]{geometry}" not in text:
    fail("the paper is not using one-inch margins")
if not re.search(r"\\author\s*\{[^}]+\}", text):
    fail("author metadata is missing")
if not re.search(r"\\date\s*\{[^}]+\}", text):
    fail("date metadata is missing")

without_comments = re.sub(r"(?<!\\)%.*", "", text)
stack: list[int] = []
for index, char in enumerate(without_comments):
    if char == "{" and (index == 0 or without_comments[index - 1] != "\\"):
        stack.append(index)
    elif char == "}" and (index == 0 or without_comments[index - 1] != "\\"):
        if not stack:
            fail(f"unmatched closing brace at byte {index}")
        stack.pop()
if stack:
    fail(f"{len(stack)} unmatched opening brace(s)")

begins = re.findall(r"\\begin\{([^}]+)\}", without_comments)
ends = re.findall(r"\\end\{([^}]+)\}", without_comments)
env_stack: list[str] = []
token_re = re.compile(r"\\(begin|end)\{([^}]+)\}")
for match in token_re.finditer(without_comments):
    kind, name = match.groups()
    if kind == "begin":
        env_stack.append(name)
    elif not env_stack or env_stack.pop() != name:
        fail(f"environment nesting error near {match.group(0)}")
if env_stack:
    fail(f"unclosed environment(s): {', '.join(env_stack)}")
if len(begins) != len(ends):
    fail("different numbers of begin and end commands")

labels = set(re.findall(r"\\label\{([^}]+)\}", without_comments))
refs = set(re.findall(r"\\(?:eqref|ref)\{([^}]+)\}", without_comments))
missing = sorted(refs - labels)
if missing:
    fail("undefined cross-reference(s): " + ", ".join(missing))

abstract_match = re.search(
    r"\\begin\{abstract\}(.*?)\\end\{abstract\}", without_comments, re.S
)
if not abstract_match:
    fail("abstract not found")
abstract = re.sub(r"\s+", " ", abstract_match.group(1)).strip()
sentence_count = len(re.findall(r"\.(?:\s|$)", abstract))
if sentence_count > 6:
    fail(f"abstract has {sentence_count} sentences; maximum is 6")

for forbidden in ("first proof", "first resolution", "novel theorem"):
    if forbidden.lower() in text.lower():
        fail(f"unsupported priority wording found: {forbidden!r}")

print(
    "tex-sanity: PASS "
    f"({len(labels)} labels, {len(refs)} referenced labels, "
    f"{sentence_count} abstract sentences)"
)
