# Changelog

All notable development changes for TikZ-Sections are recorded here.

## Unreleased

### Changed

- Renamed the main package surface to `tikz-sections`, with public commands now
  using the `\TikZSections...` prefix and styles using the `tikzSections/...`
  namespace.
- Removed package-owned built-up section wrappers from the current public API so
  built-up assemblies are composed with ordinary TikZ scopes and transforms.
- Added TikZ-like placement keys `at={(x,y)}` and `shift={(x,y)}` while keeping
  `x` and `y` placement keys available.
- Added `xscale` and `yscale` keys and a smoke test covering composition inside
  ordinary TikZ scopes.
- Standardized CFS channel and zee handling so public commands accept common
  `flange`/`lip` values while also supporting independent `top flange`,
  `bottom flange`, `top lip`, and `bottom lip` overrides.
- Consolidated public CFS channel and zee variants into `\TikZSectionsChannel`
  and `\TikZSectionsZee`; lipped and unlipped forms are selected by lip
  parameters rather than separate public lipped-channel/lipped-zee commands.
- Documented and tested `lip=0` as the unlipped form for CFS channel and zee
  geometry.
- Normalized public circular section wrappers so their local drawing extent
  starts from the south-west origin instead of being centered on the origin.
- Standardized radius aliases by accepting `inside radius`, `bend radius`, and
  `root radius` as readable names for the current radius parameter.

## v0.1.2 - 2026-05-23

### Changed

- Prepared CTAN-facing metadata by adding package information to the README,
  naming the manual maintainer, and removing tracked macOS metadata.

## v0.1.1 - 2026-05-23

### Changed

- Changed the package license to the LaTeX Project Public License, version
  1.3c or later.

## v0.1.0 - 2026-05-23

### Added

- Added LaTeX package metadata with `\NeedsTeXFormat` and `\ProvidesPackage`.
- Added package-level TikZ styles:
  - `tikzSections/straight`
  - `tikzSections/round`
  - `tikzSections/centerline`
  - `tikzSections/hidden`
  - `tikzSections/dimension`
  - `tikzSections/label`
  - `tikzSections/fill`
  - `tikzSections/concrete`
  - `tikzSections/rebar`
  - `tikzSections/tie`
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
- Added explicit hot-rolled steel command wrappers:
  - `\csHRSUniversalBeam`
  - `\csHRSUniversalColumn`
  - `\csHRSISection`
  - `\csHRSWeldedI`
  - `\csHRSTee`
  - `\csHRSChannel`
  - `\csHRSEqualAngle`
  - `\csHRSUnequalAngle`
  - `\csHRSPlate`
  - `\csHRSFlatBar`
  - `\csHRSRoundBar`
  - `\csHRSCHS`
  - `\csHRSRHS`
  - `\csHRSSHS`
- Added initial key-value public API:
  - `\TikZSectionsSetup`
  - `\TikZSectionsChannel`
  - `\TikZSectionsLippedChannel`
  - `\TikZSectionsStiffenedChannel`
  - `\TikZSectionsZee`
  - `\TikZSectionsLippedZee`
  - `\TikZSectionsSigma`
  - `\TikZSectionsHat`
  - `\TikZSectionsAngle`
  - `\TikZSectionsLippedAngle`
  - `\TikZSectionsRHS`
  - `\TikZSectionsSHS`
  - `\TikZSectionsCHS`
  - `\TikZSectionsUniversalBeam`
  - `\TikZSectionsUniversalColumn`
  - `\TikZSectionsWeldedI`
  - `\TikZSectionsTee`
  - `\TikZSectionsHRSChannel`
  - `\TikZSectionsEqualAngle`
  - `\TikZSectionsUnequalAngle`
  - `\TikZSectionsPlate`
  - `\TikZSectionsRoundBar`
- Expanded the key-value public API with remaining bar/hollow wrappers:
  - `\TikZSectionsFlatBar`
  - `\TikZSectionsHRSCHS`
  - `\TikZSectionsHRSRHS`
  - `\TikZSectionsHRSSHS`
- Added key-value drawing options for `filled`, `centerline`, `dimensions`,
  `monochrome`, `label`, `label x`, `label y`, `mode`, `simplified`, and
  `detailed`.
- Documented that `dimensions=true` is currently a basic overlay placeholder,
  with full dimension labels and standard-based notation reserved for later
  development.
- Added initial reinforced-concrete cross-section commands:
  - `\TikZRCRectangular`
  - `\TikZRCCircular`
- Added initial documentation and example sources:
  - `docs/tikz-sections-doc.tex`
  - `examples/cfs-gallery.tex`
  - `examples/hrs-gallery.tex`
  - `examples/rc-gallery.tex`
  - `examples/style-customization.tex`
- Added permanent smoke-test sources:
  - `tests/smoke-cfs.tex`
  - `tests/smoke-hrs.tex`
  - `tests/smoke-keyval.tex`
  - `tests/smoke-rc.tex`

### Changed

- Replaced package-internal `\usepackage{tikz}` with `\RequirePackage{tikz}`.
- Removed the unused `tkz-euclide` dependency.
- Routed existing drawing commands through named TikZ styles instead of direct
  `red` and `blue` draw options.
- Changed older lip/stiffener checks from integer-only `\ifnum` tests to
  decimal-safe `\ifdim` tests.
- Kept lower-level positional helper commands available while adding key-value wrappers.
- Expanded the key-value smoke test to cover all current key-value wrappers and
  common overlay/style options.
- Expanded `.gitignore` for common LaTeX build products and local build
  directories.
- Added a `Makefile` for repeatable documentation, example, and smoke-test
  compilation.

### Verified

- `tikz-sections.tex` compiles with `pdflatex`.
- A temporary Phase 2 CFS smoke test compiles all new CFS wrapper commands.
- A temporary Phase 3 HRS smoke test compiles all new HRS wrapper commands.
- A temporary Phase 4 key-value smoke test compiles the new `\TikZSections...`
  commands.
- The documentation, examples, and permanent smoke-test sources compile with
  MacTeX using `pdflatex`.
- `make all` compiles the manual, example gallery files, and smoke-test
  documents with MacTeX using `pdflatex`.
