# TikZ-Steel
A TikZ-LaTeX package to draw steel cross-sections

## Aim
It is a very tough work to prepare high-quality figures for papers and reports. The aim of the package is to make such time-consuming procedure, easier for the engineers and academics in the field of cold-formed and hot-rolled steel, structural engineering.

## Tools
This package is developed over the very useful and powerfull TikZ package. Therefor, all the great features of that library is accessible when using TikZ-Steel. Apparently you will need LaTeX and TikZ installed on your system in order to be able to use this package.

## Installation
Clone this or download the latest version of this repository.

`$ git clone https://github.com/someparsa/TikZ-Steel.git`

Put the `.sty` file in the directory where you save your LaTeX file. Then import the package like any other standard packages in LaTeX system.

`\usepackage{tikzSteel}`

This package is still not added to the CTAN.

## Development roadmap

The development plan is tracked in [ROADMAP.md](ROADMAP.md). The current goal is
to make the package ready for a first CTAN release with comprehensive
cold-formed steel (CFS) and hot-rolled steel (HRS) cross-section drawings.

Main planned work:

- [ ] Package metadata and CTAN-ready structure
- [ ] Complete CFS section catalogue
- [ ] Built-up and back-to-back CFS sections
- [ ] Complete HRS section catalogue
- [ ] Configurable TikZ styles for colors, line widths, fills, and labels
- [ ] Documentation, examples, and smoke tests
- [ ] Future roof, concrete, and standard-based dimensioning modules
