# Markdown-LaTeX-Pandoc Example
## Overview
This repository demonstrates how to produce scientific, academic, and technical PDF documents such as essays, reports, or thesis using the Markdown language.

Since PDF documents have a static layout, we show how to produce multiple output documents with different layouts optimized for print and various reading devices with different screen sizes.

We use [Pandoc](https://pandoc.org/) to convert the Markdown document into [LaTeX](https://www.latex-project.org/) as an intermediate format and then into a PDF document via XeLaTeX to support Unicode symbols.

We also automate the build and release workflows using GitHub Actions. After every push, GitHub Actions create the output documents and upload them as artifacts. If the push is tagged, the action will publish a release and upload the documents and source code as assets. You can navigate to [Releases](./releases) and find the output files and source code under the Assets section.


## Intructions
We can build the documents locally using the `build.sh` script via a shell. The script requires installing `pandoc` and `xelatex` and having them on the path.

We should give execution right to the `build.sh` shell script.

```bash
chmod +x build.sh
```

Now, we can execute the build script using Bash with the desired function name as an argument. For example, we can create a print output using:

```bash
bash build.sh pdf_print
```

We can also create an e-reader-friendly output using:

```bash
bash build.sh pdf_ereader
```

The output will appear under the `build` directory. These commands are also available under the `Makefile`, for example, `make pdf-print` or `make pdf-ereader`.
