# Pandoc-Markdown-LaTeX-PDF
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5035130.svg)](https://doi.org/10.5281/zenodo.5035130)
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf?sort=semver)](https://github.com/jaantollander/pandoc-markdown-latex-pdf/releases)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/jaantollander/pandoc-markdown-latex-pdf/Build)](https://github.com/jaantollander/pandoc-markdown-latex-pdf/actions/workflows/build.yml)
[![GitHub](https://img.shields.io/github/license/jaantollander/pandoc-markdown-latex-pdf)](./LICENSE)

## Overview
This repository demonstrates how to produce scientific, academic, and technical PDF documents such as essays, reports, or thesis using the Markdown language and manage the document using the Git version control system. Since PDF documents have a static layout, we show how to produce multiple output documents with different layouts optimized for print and various reading devices with different screen sizes.

We use [*Pandoc*](https://pandoc.org/) to convert the Markdown document into [*LaTeX*](https://www.latex-project.org/) as an intermediate format and then into a PDF document via *XeLaTeX* to support Unicode symbols. We also automate the build and release workflows using *GitHub Actions*, based on [*Using Pandoc with GitHub Actions*](https://github.com/pandoc/pandoc-action-example). After every push, GitHub Actions create the output documents and upload them as artifacts. If the push is tagged, the action will publish a release and upload the documents and source code as assets. 

You should navigate [**Releases**](https://github.com/jaantollander/pandoc-markdown-latex-pdf/releases) to see out how GitHub displays the released PDF document versions.


## Content, Assets and Layouts
The directory structure aims to separate the structure and presentation of the document. We place structural elements into the content directory and presentational elements into assets and layouts directories as follows:

- The [`content/`](./content/) directory contains the Markdown files, bibliography file in BibTeX format, and other content such as images.
- The [`assets/`](./assets/) directory contains assets such as the Citation Style Language, which defines the style for citations.
- The [`layouts/`](./layouts/) directory contains the different layouts for output documents such as for print and e-reader.


## Building Documents
The output from a build will appear under the [`build/`](./build/) directory. In our example, we will find two files inside it:

- [`output_print.pdf`](./build/output_print.pdf)
- [`output_ereader.pdf`](./build/output_ereader.pdf)

In practice, we should ignore the `build` directory from version control and rely on releases for releasing versions of the documents. However, we included the build to the version control as a demonstration.

We can build the documents locally using the [`build.sh`](./build.sh) script via a shell. The script requires installing `pandoc` and `xelatex` and having them on the path.

We should give execution right to the `build.sh` shell script.

```bash
chmod +x build.sh
```

Now, we can execute the build script using shell with the desired function name as an argument. For example, we can create a print output using:

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

Pushing a new tag triggers GitHub Actions to create and publish a new release to the [Releases](https://github.com/jaantollander/pandoc-markdown-latex-pdf/releases) page with new document versions as assets.


## Keeping a Changelog
Complex, evolving document projects should [keep a changelog](https://keepachangelog.com) in [`CHANGELOG.md`](./CHANGELOG.md) file to explain changes between versions in human-readable language.


## Licensing Documents
We should always [choose a license](https://choosealicense.com/) for document projects. Various [Creative Commons](https://creativecommons.org/licenses/) licenses are popular for creative works and documents. Alternatively, we can open-source licenses such as the [MIT](https://choosealicense.com/licenses/mit/) license. It is a convention to store the license information to [`LICENSE`](./LICENSE) file.


## Making Documents Citable
We can follow the instructions on the GitHub guide, [Making Your Code Citable](https://guides.github.com/activities/citable-code/), to create a citable repository by publishing it on [Zenodo](https://zenodo.org/), an Open Science publishing platform operated by CERN. You should link your GitHub and [ORCID](https://orcid.org/) accounts with your Zenodo account.

First, we need to log in to Zenodo, navigate to our profile, and authorize Zenodo to access our GitHub account. Then, we can choose our document project repository for archival. Zenodo automatically archives each release we make to the repository. We need at least one release to create a Digital Object Identifier (DOI), which provides a unique, immutable pointer to the repository, allowing us to collect citation data or changing the underlying GitHub repository URL without breaking existing links. We can add the DOI as a badge to the `README.md` file. 

Finally, we can cite our repository by exporting a citation from the Zenodo archive. Zenodo offers BibTeX, JSON, and XML-based citation file formats which you can find under the *Export* section. Alternatively, we can create a [CITATION.cff](./CITATION.cff) file which creates *Cite This Repository* button to the repository's landing page as described in [About Citation Files](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-on-github/about-citation-files).


## Adding Badges
![](https://img.shields.io/badge/badge-message-blue)

We can add badges with [shields.io](https://shields.io/) to the `README.md` file to indicate the most recent release version and build status. You can search for the *GitHub release* and *GitHub workflow status* badge, then add your repository information and copy the badge as Markdown. The copied badge is an vector graphics image, similar to the code below:

```markdown
![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf?sort=semver)
```

You can wrap the badge image in a link pointing to the appropriate resource as follows:

```markdown
[<place-the-badge-inside-the-square-brackets>](https://github.com/jaantollander/pandoc-markdown-latex-pdf/releases)
```

Resulting Markdown will look as follows:

```markdown
[![GitHub release (latest SemVer)](https://img.shields.io/github/v/release/jaantollander/pandoc-markdown-latex-pdf?sort=semver)](https://github.com/jaantollander/markdown-latex-pandoc-example/releases)
```
