# TikZ-Steel Roadmap

This file tracks active and future work only. Completed features and release
history are summarized in [README.md](README.md), with detailed release notes in
[CHANGELOG.md](CHANGELOG.md).

## Near-Term Polish

- [ ] Decide whether to rename the package from `tikzSteel` to `tikzSections`.
- [ ] If renamed, make `tikzSections.sty` the main package file.
- [ ] Keep `tikzSteel.sty` as a compatibility shim for at least one release
  cycle.
- [ ] Rename the primary public command prefix from `\TikZSteel...` to a
  section-oriented prefix, likely `\TikZSection...`.
- [ ] Keep old `\TikZSteel...` commands as compatibility aliases.
- [ ] Rename the internal style namespace from `tikzSteel/...` to
  `tikzSections/...`.
- [ ] Continue refactoring repeated geometry into internal helper macros:
  - straight segment
  - rounded corner
  - lip/stiffener segment
  - hollow/closed outline
  - mirrored/reversed section helpers
- [ ] Define `simplified` and `detailed` drawing modes.
- [ ] Decide what detailed mode means for:
  - CFS bends
  - HRS rolled radii
  - toe radii
- [ ] Add examples showing simplified and detailed modes.

## TikZ Integration And Coordinate Standardization

- [ ] Ensure public drawing commands are designed for use inside an existing
  `tikzpicture`.
- [ ] Confirm no public section command creates a `tikzpicture` internally.
- [ ] Ensure section commands respect surrounding TikZ scopes:
  - `shift`
  - `scale`
  - `rotate`
  - `xscale`
  - `yscale`
  - style settings
- [ ] Define a predictable coordinate convention for every section command.
- [ ] Define a default anchor for every section, such as `south west` or
  `center`.
- [ ] Add or standardize placement keys:
  - `at={(x,y)}`
  - `anchor=...`
  - `scale=...`
  - `rotate=...`
- [ ] Verify predictable bounding box behavior for:
  - plain sections
  - filled sections
  - labeled sections
  - dimensioned sections
- [ ] Document how package section commands can be mixed with ordinary TikZ code
  in the same `tikzpicture`.

## API And Parameter Standardization

- [ ] Define canonical parameter names for all section families.
- [ ] Confirm whether `radius` always means inside bend/root radius.
- [ ] Continue standardizing and documenting CFS inputs:
  - depth
  - flange widths
  - lip/stiffener lengths
  - thickness
  - inside bend radius
  - gap/spacing for built-up sections
  - optional drawing style
- [ ] Continue standardizing and documenting HRS inputs:
  - depth
  - width
  - flange thickness
  - web thickness
  - root radius
  - toe radius where applicable
- [ ] Decide how legacy positional commands map to the standardized key-value
  API.
- [ ] Document compatibility expectations and deprecation policy.

## Built-Up Sections As TikZ Composition

- [ ] Reframe built-up sections as TikZ composition examples rather than
  separate core geometry implementations.
- [ ] Prioritize robust single-section primitives over specialized built-up
  APIs.
- [ ] Ensure single-section commands compose cleanly with TikZ scopes and
  transforms:
  - `scope`
  - `shift`
  - `rotate`
  - `xscale`
  - `yscale`
- [ ] Add documentation examples for composing:
  - back-to-back channels
  - toe-to-toe channels
  - nested channels
  - boxed channels
  - double angles
  - built-up sections with fasteners
- [ ] Show fasteners/welds as ordinary TikZ additions where practical.
- [ ] Keep existing built-up commands for compatibility.
- [ ] Avoid expanding the built-up command family unless a command provides
  clear value beyond normal TikZ composition.
- [ ] Decide whether existing built-up-specific commands should be documented as
  legacy convenience wrappers.

## Documentation

- [ ] Expand the manual:
  - complete argument tables for all positional commands
  - rendered visual gallery inside the manual
  - explicit compatibility notes for legacy commands
  - stable release-oriented API reference
- [ ] Polish example gallery layout:
  - prevent sketch/parameter text overlaps in row-based galleries
  - normalize sketch bounding boxes and scales across examples
  - reduce long-command overfull warnings
  - keep parameter text readable beside each sketch
- [ ] Add a manual section titled `Composing Sections With TikZ`.
- [ ] Demonstrate placing multiple sections in one `tikzpicture`.
- [ ] Demonstrate combining section commands with normal TikZ commands:
  - `\draw`
  - `\fill`
  - `\node`
  - `\foreach`
  - `scope`
- [ ] Add examples showing user-created built-up sections using normal TikZ
  transforms.
- [ ] Add examples showing labels, dimensions, and custom styling in composed
  drawings.
- [ ] Explain coordinate origin, anchor behavior, and bounding box behavior.

## CTAN Submission

- [ ] Delay CTAN submission until the package name, public command prefix,
  parameter names, and TikZ composition behavior are stable.
- [ ] Submit to CTAN after final review:
  - choose the package topic/category metadata
  - provide maintainer, license, summary, and package description
  - confirm that the package name, file layout, and documentation follow CTAN
    expectations

## Future Extensions

- [ ] Add thin-walled roof section features:
  - trapezoidal roof sheets
  - corrugated roof sheets
  - standing-seam profiles
  - ribbed decking profiles
  - custom folded roof sheet profiles
- [ ] Expand concrete drawing features:
  - beam elevations
  - column elevations
  - slabs
  - walls
  - reinforcement detailing beyond simple cross-sections
  - stirrup/tie spacing along member length
- [ ] Expand the current `dimensions=true` placeholder into a real
  dimensioning subsystem:
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
