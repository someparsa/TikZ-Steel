# TikZ-Sections Roadmap

This file tracks remaining work only. Completed features and improvements are
summarized in [README.md](README.md), with release-level notes in
[CHANGELOG.md](CHANGELOG.md).

## Near-Term Polish

- [ ] Continue refactoring repeated geometry into internal helper macros:
  - straight segment helpers started for channel and zee
  - rounded corner helpers started for channel and zee
  - lip and stiffener helpers
  - hollow and closed-outline helpers started through the shared box helper
  - mirrored or reversed section helpers
- [ ] Continue defining the behavior of `simplified` and `detailed` input modes:
  - CFS channel, stiffened channel, zee, and sigma now use simplified mode for
    nominal symmetric `flange`/`lip` input
  - those commands use detailed mode to honor independent top/bottom flange and
    lip dimensions
  - remaining section families still need mode-specific input contracts
- [ ] Decide what detailed mode means for:
  - CFS bends
  - HRS rolled radii
  - toe radii
- [ ] Add examples showing simplified and detailed modes after the behavior is
  defined.

## Coordinate And Bounding-Box Standardization

- [ ] Define the public coordinate origin for every section command.
- [ ] Define a predictable coordinate convention for every section family.
- [ ] Confirm whether additional public anchor choices are needed.
- [ ] Document lower-level helper placement expectations.
- [ ] Verify predictable bounding-box behavior for:
  - plain sections
  - filled sections
  - labeled sections
  - dimensioned sections
  - transformed sections

## API And Parameter Standardization

- [ ] Define canonical parameter names for all remaining section families.
- [ ] Confirm whether `radius` always means inside bend radius or root radius,
  depending on section family.
- [ ] Finish CFS input standardization:
  - angle lip naming and direction
  - stiffener length and position naming
  - folded-plate parameter naming
  - optional drawing-style parameters
- [ ] Continue standardizing HRS inputs:
  - depth
  - width
  - flange thickness
  - web thickness
  - root radius
  - toe radius where applicable
- [ ] Decide how positional helper commands map to the standardized key-value
  API.
- [ ] Document public API stability expectations before the first CTAN release.

## Built-Up Sections As TikZ Composition

- [ ] Expand documentation examples for user-composed built-up sections:
  - back-to-back channels started in the rendered manual examples
  - toe-to-toe channels started in the rendered manual examples
  - nested channels started in the rendered manual examples
  - boxed channels started in the rendered manual examples
  - double angles started in the rendered manual examples
  - built-up sections with fasteners started in the rendered manual examples
- [ ] Show fasteners and welds as ordinary TikZ additions where practical.
- [ ] Keep built-up command families out of the public API unless a future
  command provides clear value beyond normal TikZ composition.

## Documentation

- [ ] Expand the manual:
  - complete argument tables for all positional commands
  - rendered visual gallery inside the manual
  - clearer notes on lower-level positional helper commands
  - stable release-oriented API reference
- [ ] Polish example gallery layout:
  - prevent sketch and parameter text overlaps in row-based galleries
  - normalize sketch bounding boxes and scales across examples
  - reduce long-command overfull warnings
  - keep parameter text readable beside each sketch
- [ ] Add more composed TikZ examples showing:
  - multiple sections in one `tikzpicture`
  - `\draw`
  - `\fill`
  - `\node`
  - `\foreach`
  - nested `scope` transforms
  - labels, dimensions, and custom styling in composed drawings
- [ ] Explain coordinate origin and bounding-box behavior after those
  conventions are finalized.

## CTAN Submission

- [ ] Use staged version 0.2.0 as the baseline for the first CTAN submission
  candidate.
- [ ] Review parameter names, coordinate conventions, documentation, and examples
  against CTAN-readiness before upload.
- [ ] Before submission, choose CTAN topic/category metadata.
- [ ] Confirm maintainer, license, summary, package description, file layout,
  documentation, and upload archive contents.

## Future Extensions

- [ ] Add thin-walled roof section features:
  - trapezoidal roof sheets
  - corrugated roof sheets
  - standing-seam profiles
  - ribbed decking profiles
  - custom folded roof sheet profiles
- [ ] Expand concrete drawing features:
  - cross-section stirrup placement around the outside edge of the longitudinal
    bar envelope is now shown for rectangular and circular RC sections
  - default RC styling now uses blue longitudinal bars, red stirrups/ties, and a
    heavier concrete outline
  - beam elevations
  - column elevations
  - slabs
  - walls
  - reinforcement detailing beyond simple cross-sections
  - stirrup/tie spacing along member length
- [ ] Expand the current `dimensions=true` placeholder into a real
  dimensioning subsystem:
  - channel and zee now use boxed parameter legends for web, flange, lip,
    thickness, and radius labels
  - dimension value labels
  - extension lines and configurable offsets
  - unit formatting
  - ISO-style dimensions
  - AISC-style dimensions
  - AS/NZS-style dimensions
  - Eurocode-style dimensions
  - custom units, labels, arrows, and notation presets
- [ ] Improve drawing quality:
  - improve geometric consistency across CFS and HRS shapes
  - normalize scale, orientation, and bounding boxes for all section sketches
  - refine bend and rolled-radius drawing behavior
  - improve closed-section fill behavior and line joins
  - add visual regression examples before changing existing shapes
  - review engineering terminology and parameter names against common steel
    section notation
