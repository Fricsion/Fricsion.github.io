---
title: LaTeX日本語
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
    <title>LaTeX日本語</title>
---
# Using JP characters in Latex or Pandoc

## In Latex
Put this line
```
\usepackage[whole]{bxcjkjatype}
```
on top of anything else.

## In Pandoc (Markdown)

Put these lines
```
---
header-includes:
- \usepackage[whole]{bxcjkjatype}
---
```
on top of anything else.
the part between `---` is meant to be the meta data.
