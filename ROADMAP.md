# TikZ-Steel Roadmap

This file tracks active and future work only. Completed features and release
history are summarized in [README.md](README.md), with detailed release notes in
[CHANGELOG.md](CHANGELOG.md).

## Near-Term Polish

- [ ] Continue refactoring repeated geometry into internal helper macros:
  - straight segment
  - rounded corner
  - lip/stiffener segment
  - hollow/closed outline
  - mirrored/reversed section helpers
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
- [ ] Support drawing modes:
  - simplified engineering mode
  - detailed rolled-radius mode

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

## CTAN Submission

- [ ] Submit to CTAN after final review:
  - choose the package topic/category metadata
  - provide maintainer, license, summary, and package description
  - confirm that the package name, file layout, and documentation follow CTAN
    expectations

## Future Extensions

- [ ] Add roof drawing features:
  - trusses
  - rafters
  - purlins
  - sheeting
  - ridge/eave details
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
