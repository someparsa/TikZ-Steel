# TikZ-Steel

A TikZ-LaTeX package for drawing steel cross-sections.

## Aim

Preparing high-quality structural engineering figures for papers and reports is
time-consuming. TikZ-Steel aims to make this easier for engineers and academics
working with cold-formed and hot-rolled steel sections.

## Tools

This package is built on top of TikZ, so normal TikZ features can be used around
and alongside TikZ-Steel drawings. A LaTeX distribution with TikZ/PGF is
required.

## Installation

Clone this or download the latest version of this repository.

```sh
git clone https://github.com/someparsa/TikZ-Steel.git
```

Put the `.sty` file in the directory where you save your LaTeX file. Then import the package like any other standard packages in LaTeX system.

```tex
\usepackage{tikzSteel}
```

This package is still not added to the CTAN.

## Quick example

```tex
\documentclass[margin=2mm]{standalone}
\usepackage{tikzSteel}

\begin{document}
\begin{tikzpicture}
  \TikZSteelLippedChannel[
    depth=245,
    flange=75,
    lip=20,
    thickness=2.5,
    radius=5
  ]
\end{tikzpicture}
\end{document}
```

The command above draws a lipped cold-formed channel using:

```text
\TikZSteelLippedChannel[depth=..., flange=..., lip=..., thickness=..., radius=...]
```

## Current status

The package is being refactored gradually toward a documented CTAN-ready
release. The current development version includes:

- Package metadata and package-safe TikZ dependency loading.
- Configurable TikZ styles for straight segments, curved segments, labels,
  dimensions, hidden lines, and fills.
- Legacy drawing commands such as `\csChannel`, `\csBox`, `\csZee`, `\csL`,
  `\csTube`, `\csUBC`, and related HRS commands.
- New explicit cold-formed steel commands with `\csCFS...` names.
- New built-up CFS section commands.
- New explicit hot-rolled steel commands with `\csHRS...` names.
- Key-value public commands with `\TikZSteel...` names.

## Key-value API

The recommended public API is the newer key-value interface. These commands use
readable option names and provide defaults for omitted values:

```tex
\TikZSteelChannel[
  depth=245,
  flange=75,
  thickness=2.5,
  radius=5,
  centerline=true,
  dimensions=true,
  label=C245,
  label x=35,
  label y=130,
  scale=0.2,
  rotate=0,
  x=0,
  y=0
]
```

Common keys include:

- `depth`
- `width`
- `flange`
- `top flange`
- `bottom flange`
- `left flange`
- `right flange`
- `lip`
- `top lip`
- `bottom lip`
- `thickness`
- `radius`
- `root radius`
- `gap`
- `offset`
- `position`
- `stiffener position`
- `leg`
- `vertical leg`
- `horizontal leg`
- `web depth`
- `web thickness`
- `flange thickness`
- `top flange width`
- `top flange thickness`
- `bottom flange width`
- `bottom flange thickness`
- `reference line width`
- `line width`
- `label`
- `label x`
- `label y`
- `mode`
- `simplified`
- `detailed`
- `filled`
- `centerline`
- `dimensions`
- `monochrome`
- `scale`
- `rotate`
- `x`
- `y`

Current key-value commands:

- `\TikZSteelChannel`
- `\TikZSteelLippedChannel`
- `\TikZSteelStiffenedChannel`
- `\TikZSteelZee`
- `\TikZSteelLippedZee`
- `\TikZSteelSigma`
- `\TikZSteelHat`
- `\TikZSteelAngle`
- `\TikZSteelLippedAngle`
- `\TikZSteelRHS`
- `\TikZSteelSHS`
- `\TikZSteelCHS`
- `\TikZSteelBackToBackChannels`
- `\TikZSteelToeToToeChannels`
- `\TikZSteelNestedChannels`
- `\TikZSteelBoxedChannels`
- `\TikZSteelBuiltUpIChannels`
- `\TikZSteelBackToBackZees`
- `\TikZSteelUniversalBeam`
- `\TikZSteelUniversalColumn`
- `\TikZSteelWeldedI`
- `\TikZSteelTee`
- `\TikZSteelHRSChannel`
- `\TikZSteelEqualAngle`
- `\TikZSteelUnequalAngle`
- `\TikZSteelDoubleAngles`
- `\TikZSteelPlate`
- `\TikZSteelFlatBar`
- `\TikZSteelRoundBar`
- `\TikZSteelHRSCHS`
- `\TikZSteelHRSRHS`
- `\TikZSteelHRSSHS`

The legacy positional commands remain available for compatibility and for
lower-level drawing control.

## Cold-formed steel commands

Single open sections:

- `\csCFSChannel{depth}{flange}{thickness}{radius}`
- `\csCFSLippedChannel{depth}{flange}{lip}{thickness}{radius}`
- `\csCFSEdgeStiffenedChannel{depth}{flange}{lip}{thickness}{radius}`
- `\csCFSZee{depth}{flange}{thickness}{radius}`
- `\csCFSLippedZee{depth}{flange}{lip}{thickness}{radius}`
- `\csCFSSigma{depth}{top flange}{top lip}{bottom flange}{bottom lip}{thickness}{radius}`
- `\csCFSHat{depth}{left flange}{web width}{right flange}{thickness}{radius}`
- `\csCFSAngle{leg 1}{leg 2}{thickness}{radius}`
- `\csCFSLippedAngle{leg 1}{leg 2}{thickness}{radius}{lip}`

Stiffened channels:

- `\csCFSChannelWithOneStiffener{depth}{top flange}{top lip}{bottom flange}{bottom lip}{thickness}{radius}{stiffener position}`
- `\csCFSChannelWithTwoStiffeners{depth}{top flange}{top lip}{bottom flange}{bottom lip}{thickness}{radius}`
- `\csCFSChannelWithThreeStiffeners{depth}{top flange}{top lip}{bottom flange}{bottom lip}{thickness}{radius}{middle stiffener position}`

Hollow and closed sections:

- `\csCFSBox{depth}{width}{thickness}{radius}`
- `\csCFSRHS{depth}{width}{thickness}{radius}`
- `\csCFSSHS{width}{thickness}{radius}`
- `\csCFSCHS{radius}{thickness}`

Built-up sections:

- `\csCFSBackToBackChannels{depth}{flange}{lip}{thickness}{radius}{gap}`
- `\csCFSToeToToeChannels{depth}{flange}{lip}{thickness}{radius}{gap}`
- `\csCFSNestedChannels{depth}{flange}{lip}{thickness}{radius}{offset}`
- `\csCFSBoxedChannels{depth}{flange}{lip}{thickness}{radius}{gap}`
- `\csCFSBuiltUpIChannels{depth}{left flange}{right flange}{thickness}{radius}{gap}`
- `\csCFSBackToBackZees{depth}{flange}{lip}{thickness}{radius}{gap}`
- `\csCFSBackToBackAngles{leg 1}{leg 2}{thickness}{radius}{gap}`
- `\csCFSFasteners{line width}{start}{step}{end}`

Generic folded sections:

- `\csCFSFoldedPlate{(x1,y1),(x2,y2),...}{thickness}`

## Hot-rolled steel commands

I, tee, and channel sections:

- `\csHRSUniversalBeam{depth}{width}{flange thickness}{web thickness}{root radius}`
- `\csHRSUniversalColumn{depth}{width}{flange thickness}{web thickness}{root radius}`
- `\csHRSISection{depth}{width}{flange thickness}{web thickness}{root radius}`
- `\csHRSWeldedI{web depth}{web thickness}{bottom flange width}{bottom flange thickness}{top flange width}{top flange thickness}`
- `\csHRSTee{depth}{width}{flange thickness}{web thickness}{root radius}`
- `\csHRSChannel{depth}{width}{flange thickness}{web thickness}{root radius}`

Angles:

- `\csHRSEqualAngle{leg}{thickness}{root radius}`
- `\csHRSUnequalAngle{vertical leg}{horizontal leg}{thickness}{root radius}`
- `\csHRSDoubleAngles{vertical leg}{horizontal leg}{thickness}{root radius}{gap}`

Bars, plates, and hollow sections:

- `\csHRSPlate{width}{thickness}{reference line width}`
- `\csHRSFlatBar{width}{thickness}{reference line width}`
- `\csHRSRoundBar{radius}{line width}`
- `\csHRSCHS{radius}{thickness}`
- `\csHRSRHS{depth}{width}{thickness}{radius}`
- `\csHRSSHS{width}{thickness}{radius}`

## Style customization

The default drawing uses red straight segments and blue curved segments, but
these can now be overridden with TikZ styles:

```tex
\TikZSteelSetup{
  tikzSteel/straight/.style={tikzSteel/default, black},
  tikzSteel/round/.style={tikzSteel/default, gray}
}
```

Available style hooks include:

- `tikzSteel/straight`
- `tikzSteel/round`
- `tikzSteel/centerline`
- `tikzSteel/hidden`
- `tikzSteel/dimension`
- `tikzSteel/label`
- `tikzSteel/fill`

## Testing

The current development version has been checked with MacTeX using:

```sh
/Library/TeX/texbin/pdflatex -interaction=nonstopmode -halt-on-error tikzSteel.tex
```

The repository now includes permanent source files for documentation, examples,
and smoke tests:

```text
docs/tikzSteel-doc.tex
examples/cfs-gallery.tex
examples/hrs-gallery.tex
examples/style-customization.tex
tests/smoke-cfs.tex
tests/smoke-hrs.tex
tests/smoke-keyval.tex
```

To compile any of these files while keeping generated outputs outside the repo:

```sh
mkdir -p /private/tmp/tikzsteel-build
TEXINPUTS="$(pwd)//:" /Library/TeX/texbin/pdflatex \
  -interaction=nonstopmode \
  -halt-on-error \
  -output-directory=/private/tmp/tikzsteel-build \
  docs/tikzSteel-doc.tex
```

During development, the documentation, examples, and smoke tests were compiled
successfully with MacTeX.

## Development roadmap

The development plan is tracked in [ROADMAP.md](ROADMAP.md), and development
changes are tracked in [CHANGELOG.md](CHANGELOG.md). The current goal is to make
the package ready for a first CTAN release with comprehensive cold-formed steel
(CFS) and hot-rolled steel (HRS) cross-section drawings.

Main planned work:

- [x] Package metadata and CTAN-ready structure foundation
- [x] Initial CFS section catalogue
- [x] Built-up and back-to-back CFS section commands
- [x] Initial HRS section catalogue
- [x] Initial key-value public API
- [x] Configurable TikZ styles for colors, line widths, fills, and labels
- [x] Initial documentation, examples, and smoke tests
- [ ] Future roof, concrete, and standard-based dimensioning modules
