#!/usr/bin/env python3
"""Generate a readable Markdown copy of the canonical LaTeX paper."""

from __future__ import annotations

import hashlib
import re
from pathlib import Path


root = Path(__file__).resolve().parents[1]
source = root / "paper" / "planar_strict_convex_hyperrigidity.tex"
target = root / "paper" / "READABLE_PREVIEW.md"
text = source.read_text(encoding="utf-8")
source_hash = hashlib.sha256(text.encode()).hexdigest()

title_match = re.search(r"\\title\{([^}]+)\}", text)
title = title_match.group(1) if title_match else "Paper preview"
body = text.split(r"\begin{document}", 1)[1].split(r"\end{document}", 1)[0]

body = re.sub(r"\\maketitle\s*", "", body)
body = re.sub(r"\\begin\{abstract\}", "## Abstract\n\n", body)
body = re.sub(r"\\end\{abstract\}", "", body)
body = re.sub(r"\\section\*?\{([^}]+)\}", r"## \1", body)

environment_names = {
    "theorem": "Theorem",
    "corollary": "Corollary",
    "lemma": "Lemma",
    "proposition": "Proposition",
    "remark": "Remark",
}


def theorem_heading(match: re.Match[str]) -> str:
    env = match.group(1)
    optional = match.group(2)
    heading = environment_names[env]
    if optional:
        heading += f": {optional[1:-1]}"
    return f"\n### {heading}\n"


body = re.sub(
    r"\\begin\{(theorem|corollary|lemma|proposition|remark)\}(\[[^\]]+\])?",
    theorem_heading,
    body,
)
body = re.sub(
    r"\\end\{(?:theorem|corollary|lemma|proposition|remark)\}", "", body
)
body = re.sub(
    r"\\begin\{proof\}(?:\[([^\]]+)\])?",
    lambda m: f"\n**{m.group(1) or 'Proof'}.**\n",
    body,
)
body = re.sub(r"\\end\{proof\}", "\n\u25a1\n", body)


def display_equation(match: re.Match[str]) -> str:
    content = match.group(1).strip()
    content = re.sub(r"\\label\{[^}]+\}", "", content)
    return f"\n$$\n{content}\n$$\n"


body = re.sub(
    r"\\begin\{(?:equation|equation\*)\}(.*?)\\end\{(?:equation|equation\*)\}",
    display_equation,
    body,
    flags=re.S,
)
body = re.sub(r"\\\[(.*?)\\\]", display_equation, body, flags=re.S)

body = body.replace(r"\begin{thebibliography}{99}", "## References\n")
body = body.replace(r"\end{thebibliography}", "")
body = re.sub(r"\\bibitem\{([^}]+)\}", r"- **\1.**", body)

body = re.sub(
    r"\\cite(?:\[([^\]]+)\])?\{([^}]+)\}",
    lambda m: f"[{m.group(2)}{', ' + m.group(1) if m.group(1) else ''}]",
    body,
)
body = re.sub(
    r"\\(?:eqref|ref)\{([^}]+)\}",
    lambda m: f"`{m.group(1)}`",
    body,
)
body = re.sub(r"\\label\{[^}]+\}", "", body)
body = re.sub(r"\\emph\{([^{}]+)\}", r"*\1*", body)
body = re.sub(r"\\textbf\{([^{}]+)\}", r"**\1**", body)
body = body.replace("~", " ")

# Expand the document's private math macros so Markdown math renderers do not
# need access to the LaTeX preamble.
macro_replacements = {
    r"\aff": r"\operatorname{aff}",
    r"\ri": r"\operatorname{ri}",
    r"\ex": r"\operatorname{ex}",
    r"\ran": r"\operatorname{ran}",
    r"\supp": r"\operatorname{supp}",
    r"\Borel": r"\mathfrak B",
    r"\calH": r"\mathcal H",
    r"\calK": r"\mathcal K",
}
for old, new in macro_replacements.items():
    body = re.sub(re.escape(old) + r"(?![A-Za-z])", lambda _: new, body)
body = re.sub(
    r"\\inner\{([^{}]*)\}\{([^{}]*)\}",
    r"\\left\\langle \1,\2\\right\\rangle",
    body,
)

# Markdown does not need TeX paragraph indentation or repeated blank lines.
body = re.sub(r"\n[ \t]+\n", "\n\n", body)
body = re.sub(r"\n{3,}", "\n\n", body).strip()

preview = f"""# {title}

> Readable preview generated from the canonical TeX source.
> It is for reading only; the `.tex` file remains the publication source.
> Source SHA-256: `{source_hash}`

{body}
"""
target.write_text(preview, encoding="utf-8")
print(target)
