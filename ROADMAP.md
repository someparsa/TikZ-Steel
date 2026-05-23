# TikZ-Steel Roadmap

This roadmap records the planned development path for making TikZ-Steel a
well-documented, CTAN-ready package for drawing structural engineering figures.
The first major goal is comprehensive support for cold-formed steel and
hot-rolled steel cross-sections. Later releases can extend the package to roof
systems, concrete drawings, and standard-based dimensioning styles.

## Phase 1: Package Foundation

- Add LaTeX package metadata:
  - `\NeedsTeXFormat{LaTeX2e}`
  - `\ProvidesPackage{tikzSteel}[date version description]`
- Use package-safe dependency loading:
  - `\RequirePackage{tikz}`
  - `\usetikzlibrary{calc}`
  - remove `tkz-euclide` if it is not required
- Add configurable TikZ styles:
  - straight steel segments
  - curved/radius segments
  - centerlines
  - hidden/reference lines
  - fill styles
  - labels
  - dimension lines
- Refactor repeated geometry into internal helper macros:
  - straight segment
  - rounded corner
  - lip/stiffener segment
  - hollow/closed outline
  - mirrored/reversed section helpers
- Keep a single `.sty` file for now, organized internally into:
  - metadata and dependencies
  - styles and options
  - helpers
  - CFS sections
  - HRS sections
  - generic sections
  - compatibility aliases

## Phase 2: Cold-Formed Steel Sections

- Add single open CFS sections:
  - unlipped channel
  - lipped channel
  - channel with edge stiffeners
  - channel with intermediate stiffeners
  - channel with multiple stiffeners
  - zee section
  - lipped zee
  - sigma section
  - hat section
  - angle
  - lipped angle
- Add hollow/closed CFS sections:
  - box section
  - rectangular hollow section
  - square hollow section
  - circular hollow section
- Add built-up/compound CFS sections:
  - back-to-back channels
  - toe-to-toe channels
  - nested channels
  - back-to-back lipped channels
  - boxed channels
  - I-shaped built-up channels
  - built-up zee combinations
  - double angles
  - spaced built-up members with configurable gap
  - optional fastener/weld indicators
- Add generic folded CFS sections:
  - arbitrary folded plate by nodal points
  - arbitrary built-up section by combining profiles
- Standardize CFS inputs:
  - depth
  - flange widths
  - lip/stiffener lengths
  - thickness
  - inside bend radius
  - gap/spacing for built-up sections
  - optional drawing style

## Phase 3: Hot-Rolled Steel Sections

- Add HRS sections:
  - universal beam/I-section
  - universal column
  - welded I-section
  - tee section
  - channel
  - equal angle
  - unequal angle
  - double angle
  - circular hollow section
  - square hollow section
  - rectangular hollow section
  - plate
  - flat bar
  - round bar
- Standardize HRS inputs:
  - depth
  - width
  - flange thickness
  - web thickness
  - root radius
  - toe radius where applicable
- Support drawing modes:
  - simplified engineering mode
  - detailed rolled-radius mode

## Phase 4: Public API Upgrade

- Add key-value commands for new usage:

```tex
\TikZSteelChannel[
  depth=245,
  flange=75,
  lip=25,
  thickness=2.5,
  radius=5
]
```

- Keep existing positional commands as compatibility wrappers.
- Add common package/user options:
  - scale
  - color
  - monochrome
  - filled
  - centerline
  - dimensions
  - labels
  - simplified/detailed mode
- Make colors and line widths configurable instead of hard-coded red/blue.

## Phase 5: Documentation and Examples

- Convert the demo file into a real manual:
  - installation
  - dependencies
  - quick start
  - command reference
  - argument tables
  - CFS examples
  - HRS examples
  - built-up section examples
  - style customization
  - known limitations
- Add an example gallery:
  - all CFS sections
  - all built-up CFS sections
  - all HRS sections
  - custom style examples
- Add smoke-test documents:
  - CFS smoke test
  - built-up CFS smoke test
  - HRS smoke test
  - style customization smoke test

## Phase 6: CTAN Release Preparation

- Add release files:
  - `README.md`
  - `LICENSE`
  - `CHANGELOG.md`
  - package source
  - documentation source
  - documentation PDF
  - examples
- Clean generated files from the source archive except the intended
  documentation PDF.
- Add versioning:
  - start with `v0.1.0`
  - document breaking and non-breaking changes
- Validate:
  - package loads cleanly
  - documentation compiles cleanly
  - all examples compile
  - no unused dependencies
  - no undocumented public commands

## Phase 7: Future Extensions

- Reserve later module groups for:
  - roof drawings
  - concrete drawings
  - standard-based dimensioning styles
- Later roof drawing features:
  - trusses
  - rafters
  - purlins
  - sheeting
  - ridge/eave details
- Later concrete drawing features:
  - beams
  - columns
  - slabs
  - walls
  - reinforcement bars
  - stirrups/ties
- Later dimensioning styles:
  - ISO-style dimensions
  - AISC-style dimensions
  - AS/NZS-style dimensions
  - Eurocode-style dimensions
  - custom units, labels, arrows, and notation presets

## Recommended First Release Scope

```text
v0.1.0:
  - CTAN-ready metadata
  - clean single-file internal structure
  - complete basic CFS sections
  - complete built-up CFS section group
  - complete basic HRS sections
  - configurable TikZ styles
  - documented examples
  - smoke tests
```
