# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased


## 0.1.0
- `content` to hold content files such as Markdown, bibliography, and image files.
- `layouts` for different LaTeX layouts.
- `assets` for citation style languages and other assets.
- `build.sh` shell script for building documents with Pandoc on Unix systems.
- `Makefile` for using `build.sh` shell script via Make.
- `.github` for GitHub Actions to build documents on push and automatically releasing new document versions when pushing new tags.
