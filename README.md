# copper-gfx-ray-scope

`copper-gfx-ray-scope` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for ray systems, covering protocol validation, framed sample traffic, and failure-oriented tests.

## Problem It Tries To Make Smaller

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Copper Gfx Ray Scope Review Notes

`stress` and `edge` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/copper-gfx-ray-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `atlas pressure` and `shader drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Dart implementation avoids hidden state so fixture changes are easy to reason about.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stress` is the high score at 218; `edge` is the low score at 114.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
