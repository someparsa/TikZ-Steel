# TikZ-Steel

A TikZ-LaTeX package for drawing steel cross-sections.

## Package information

- Version: 0.1.2
- Author: Parsa Yazdi
- Maintainer: Parsa Yazdi
- License: LaTeX Project Public License 1.3c or later
- Repository: <https://github.com/someparsa/TikZ-Steel>
- Bug tracker: <https://github.com/someparsa/TikZ-Steel/issues>

## Aim

Preparing high-quality structural engineering figures for papers and reports is
time-consuming. TikZ-Steel aims to make this easier for engineers and academics
working with cold-formed and hot-rolled steel sections.

## Tools

This package is built on top of TikZ, so normal TikZ features can be used around
and alongside TikZ-Steel drawings. A LaTeX distribution with TikZ/PGF is
required.

## Installation

Clone this repository or download a release archive.

```sh
git clone https://github.com/someparsa/TikZ-Steel.git
```

Put the `.sty` file in the directory where you save your LaTeX file. Then import the package like any other standard packages in LaTeX system.

```tex
\usepackage{tikzSteel}
```

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
release. Version 0.1.2 includes:

- Package metadata and package-safe TikZ dependency loading.
- Configurable TikZ styles for straight segments, curved segments, labels,
  dimensions, hidden lines, and fills.
- Legacy drawing commands such as `\csChannel`, `\csBox`, `\csZee`, `\csL`,
  `\csTube`, `\csUBC`, and related HRS commands.
- New explicit cold-formed steel commands with `\csCFS...` names.
- New built-up CFS section commands.
- New explicit hot-rolled steel commands with `\csHRS...` names.
- Initial reinforced-concrete cross-section commands with `\TikZRC...` names.
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
- `diameter`
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
- `cover`
- `bar diameter`
- `top bars`
- `bottom bars`
- `left bars`
- `right bars`
- `top layers`
- `bottom layers`
- `side layers`
- `layer spacing`
- `perimeter bars`
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
- `tie`
- `scale`
- `rotate`
- `x`
- `y`

### Current dimension overlay

The `dimensions=true` key currently enables a basic visual overlay using the
`tikzSteel/dimension` style. It is intended as an early placeholder for showing
generic horizontal and vertical dimension guide lines around a section.

This is not yet a full engineering dimensioning system. It does not currently
place dimension values, extension lines, standard offsets, unit formatting, or
standard-specific notation. The current example galleries intentionally show the
actual command parameters beside each sketch, which is the preferred
documentation style until the dimensioning system is developed further.

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
- `\TikZRCRectangular`
- `\TikZRCCircular`

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

## Reinforced concrete commands

The initial reinforced-concrete API focuses on simple cross-section sketches.
Rebars are drawn as filled circles and `cover` is currently interpreted as the
distance from the concrete face to the rebar centerline or tie centerline used
for the sketch.

```tex
\TikZRCRectangular[
  width=300,
  depth=500,
  cover=40,
  bar diameter=18,
  top bars=2,
  bottom bars=3,
  bottom layers=2,
  layer spacing=28
]
```

```tex
\TikZRCCircular[
  diameter=450,
  cover=45,
  bar diameter=20,
  perimeter bars=10
]
```

Rectangular RC keys include:

- `width`
- `depth`
- `cover`
- `bar diameter`
- `top bars`
- `bottom bars`
- `left bars`
- `right bars`
- `top layers`
- `bottom layers`
- `side layers`
- `layer spacing`
- `tie`

Circular RC keys include:

- `diameter`
- `cover`
- `bar diameter`
- `perimeter bars`
- `tie`

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
- `tikzSteel/concrete`
- `tikzSteel/rebar`
- `tikzSteel/tie`

## Testing

Version 0.1.2 has been checked with MacTeX using:

```sh
/Library/TeX/texbin/pdflatex -interaction=nonstopmode -halt-on-error tikzSteel.tex
```

The repository now includes permanent source files for documentation, examples,
and smoke tests:

```text
docs/tikzSteel-doc.tex
examples/cfs-gallery.tex
examples/hrs-gallery.tex
examples/rc-gallery.tex
examples/style-customization.tex
tests/smoke-cfs.tex
tests/smoke-hrs.tex
tests/smoke-keyval.tex
tests/smoke-rc.tex
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

## License

TikZ-Steel is distributed under the LaTeX Project Public License, version 1.3c
or later. See [LICENSE](LICENSE) for the full license text.

## Version history and milestones

Active work is tracked in [ROADMAP.md](ROADMAP.md). Detailed release-level
changes are tracked in [CHANGELOG.md](CHANGELOG.md).

### v0.1.2

- Added CTAN-facing package metadata to the README.
- Removed tracked macOS metadata and ignored future `.DS_Store` files.
- Set the manual author to the current maintainer.
- Rebuilt and verified a clean CTAN upload archive.

### v0.1.1

- Changed the package license to the LaTeX Project Public License, version
  1.3c or later.
- Added the LPPL package notice to `tikzSteel.sty`.

### v0.1.0

- Added package metadata and package-safe TikZ dependency loading.
- Added configurable TikZ styles for steel segments, dimensions, labels, fills,
  concrete, rebar, and ties.
- Added CFS, built-up CFS, HRS, and RC command groups.
- Added the public key-value API with `\TikZSteel...` and `\TikZRC...`
  commands.
- Added manual source, examples, smoke tests, and build targets.

Current focus areas include input standardization, parameter documentation,
example-gallery polish, CTAN submission, and future standard-based
dimensioning.
