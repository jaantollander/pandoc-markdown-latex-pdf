# Pandoc-Markdown-LaTeX-PDF Example
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf-example?sort=semver)](https://github.com/jaantollander/markdown-latex-pandoc-example/releases)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jaantollander/pandoc-markdown-latex-pdf-example/Build)](https://github.com/jaantollander/pandoc-markdown-latex-pdf-example/actions/workflows/build.yml)

## Overview
This repository demonstrates how to produce scientific, academic, and technical PDF documents such as essays, reports, or thesis using the Markdown language and manage the document using the Git version control system. Since PDF documents have a static layout, we show how to produce multiple output documents with different layouts optimized for print and various reading devices with different screen sizes.

We use [*Pandoc*](https://pandoc.org/) to convert the Markdown document into [*LaTeX*](https://www.latex-project.org/) as an intermediate format and then into a PDF document via *XeLaTeX* to support Unicode symbols. We also automate the build and release workflows using *GitHub Actions*, based on [*Using Pandoc with GitHub Actions*](https://github.com/pandoc/pandoc-action-example). After every push, GitHub Actions create the output documents and upload them as artifacts. If the push is tagged, the action will publish a release and upload the documents and source code as assets. 

You should navigate [**Releases**](https://github.com/jaantollander/markdown-latex-pandoc-example/releases) to see out how GitHub displays the released PDF document versions.


## Content, Assets and Layouts
The directory structure aims to separate the structure and presentation of the document. We place structural elements into the content directory and presentational elements into assets and layouts directories as follows:

- The [`content/`](./content/) directory contains the Markdown files, bibliography file in BibTeX format, and other content such as images.
- The [`assets/`](./assets/) directory contains assets such as the Citation Style Language, which defines the style for citations.
- The [`layouts/`](./layouts/) directory contains the different layouts for output documents such as for print and e-reader.


## Building Documents
The output from a build will appear under the [`build/`](./build/) directory. In our example, we will find two files inside it:

- [`output_print.pdf`](./build/output_print.pdf)
- [`output_ereader.pdf`](./build/output_ereader.pdf)

We can build the documents locally using the [`build.sh`](./build.sh) script via a shell. The script requires installing `pandoc` and `xelatex` and having them on the path.

We should give execution right to the `build.sh` shell script.

```bash
chmod +x build.sh
```

Now, we can execute the build script using Bash with the desired function name as an argument. For example, we can create a print output using:

```bash
./build.sh pdf_print
```

We can also create an e-reader-friendly output using:

```bash
./build.sh pdf_ereader
```

These commands are also available under the [`Makefile`](./Makefile), for example, `make pdf-print` or `make pdf-ereader`.


## Releasing New Document Versions
Document project should follow [semantic versioning](https://semver.org/). We can create a new release by tagging a commit with a new version tag in Git and pushing the tag into the remote repository. For example, we can release version `v0.1.0` as follows:

```bash
git tag v0.1.0
git push origin v0.1.0
```


## Keeping a Changelog
Complex, evolving document projects should [keep a changelog](https://keepachangelog.com) in `CHANGELOG.md` file to explain changes between versions in human-readable language.


## Licensing Documents
We should always [choose a license](https://choosealicense.com/) for document projects. Various [Creative Commons](https://creativecommons.org/licenses/) licenses are popular for creative works and documents. Alternatively, we can open-source licenses such as the [MIT](https://choosealicense.com/licenses/mit/) license. It is a convention to store the license information to `LICENSE` file.


## Adding Badges
We can add badges with [shields.io](https://shields.io/) to the `README.md` file to indicate the most recent release version and build status. You can search for the *GitHub release* and *GitHub workflow status* badge, then add your repository information and copy the badge as Markdown. The copied badge is an vector graphics image, similar to the code below:

```markdown
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf-example?sort=semver)
```

You can wrap the badge image in a link pointing to the appropriate resource as follows:

```markdown
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf-example?sort=semver)](https://github.com/jaantollander/markdown-latex-pandoc-example/releases)
``` 
