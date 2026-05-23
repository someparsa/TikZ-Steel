# Changelog

All notable development changes for TikZ-Steel are recorded here.

## Unreleased

### Added

- Added LaTeX package metadata with `\NeedsTeXFormat` and `\ProvidesPackage`.
- Added package-level TikZ styles:
  - `tikzSteel/straight`
  - `tikzSteel/round`
  - `tikzSteel/centerline`
  - `tikzSteel/hidden`
  - `tikzSteel/dimension`
  - `tikzSteel/label`
  - `tikzSteel/fill`
- Added initial internal drawing helper macros.
- Added explicit cold-formed steel command wrappers:
  - `\csCFSChannel`
  - `\csCFSLippedChannel`
  - `\csCFSEdgeStiffenedChannel`
  - `\csCFSChannelWithOneStiffener`
  - `\csCFSChannelWithTwoStiffeners`
  - `\csCFSChannelWithThreeStiffeners`
  - `\csCFSZee`
  - `\csCFSLippedZee`
  - `\csCFSSigma`
  - `\csCFSHat`
  - `\csCFSAngle`
  - `\csCFSLippedAngle`
  - `\csCFSBox`
  - `\csCFSRHS`
  - `\csCFSSHS`
  - `\csCFSCHS`
  - `\csCFSFoldedPlate`
- Added built-up CFS drawing commands:
  - `\csCFSBackToBackChannels`
  - `\csCFSToeToToeChannels`
  - `\csCFSNestedChannels`
  - `\csCFSBoxedChannels`
  - `\csCFSBuiltUpIChannels`
  - `\csCFSBackToBackZees`
  - `\csCFSBackToBackAngles`
  - `\csCFSFasteners`
- Added explicit hot-rolled steel command wrappers:
  - `\csHRSUniversalBeam`
  - `\csHRSUniversalColumn`
  - `\csHRSISection`
  - `\csHRSWeldedI`
  - `\csHRSTee`
  - `\csHRSChannel`
  - `\csHRSEqualAngle`
  - `\csHRSUnequalAngle`
  - `\csHRSDoubleAngles`
  - `\csHRSPlate`
  - `\csHRSFlatBar`
  - `\csHRSRoundBar`
  - `\csHRSCHS`
  - `\csHRSRHS`
  - `\csHRSSHS`
- Added initial key-value public API:
  - `\TikZSteelSetup`
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
  - `\TikZSteelUniversalBeam`
  - `\TikZSteelUniversalColumn`
  - `\TikZSteelWeldedI`
  - `\TikZSteelTee`
  - `\TikZSteelHRSChannel`
  - `\TikZSteelEqualAngle`
  - `\TikZSteelUnequalAngle`
  - `\TikZSteelPlate`
  - `\TikZSteelRoundBar`
- Expanded the key-value public API with built-up and remaining bar/hollow
  wrappers:
  - `\TikZSteelToeToToeChannels`
  - `\TikZSteelNestedChannels`
  - `\TikZSteelBoxedChannels`
  - `\TikZSteelBuiltUpIChannels`
  - `\TikZSteelBackToBackZees`
  - `\TikZSteelDoubleAngles`
  - `\TikZSteelFlatBar`
  - `\TikZSteelHRSCHS`
  - `\TikZSteelHRSRHS`
  - `\TikZSteelHRSSHS`
- Added key-value drawing options for `filled`, `centerline`, `dimensions`,
  `monochrome`, `label`, `label x`, `label y`, `mode`, `simplified`, and
  `detailed`.
- Added initial documentation and example sources:
  - `docs/tikzSteel-doc.tex`
  - `examples/cfs-gallery.tex`
  - `examples/hrs-gallery.tex`
  - `examples/style-customization.tex`
- Added permanent smoke-test sources:
  - `tests/smoke-cfs.tex`
  - `tests/smoke-hrs.tex`
  - `tests/smoke-keyval.tex`

### Changed

- Replaced package-internal `\usepackage{tikz}` with `\RequirePackage{tikz}`.
- Removed the unused `tkz-euclide` dependency.
- Routed existing drawing commands through named TikZ styles instead of direct
  `red` and `blue` draw options.
- Changed legacy lip/stiffener checks from integer-only `\ifnum` tests to
  decimal-safe `\ifdim` tests.
- Kept all legacy positional commands available while adding key-value wrappers.
- Expanded the key-value smoke test to cover all current key-value wrappers and
  common overlay/style options.
- Expanded `.gitignore` for common LaTeX build products and local build
  directories.
- Added a `Makefile` for repeatable documentation, example, and smoke-test
  compilation.

### Verified

- `tikzSteel.tex` compiles with `pdflatex`.
- A temporary Phase 2 CFS smoke test compiles all new CFS wrapper and built-up
  commands.
- A temporary Phase 3 HRS smoke test compiles all new HRS wrapper commands.
- A temporary Phase 4 key-value smoke test compiles the new `\TikZSteel...`
  commands.
- The documentation, examples, and permanent smoke-test sources compile with
  MacTeX using `pdflatex`.
- `make all` compiles the manual, example gallery files, and smoke-test
  documents with MacTeX using `pdflatex`.
