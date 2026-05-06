# Copper Gfx Ray Scope Walkthrough

This note is the quickest way to read the extra review model in `copper-gfx-ray-scope`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | geometry span | 147 | ship |
| stress | atlas pressure | 218 | ship |
| edge | shader drift | 114 | watch |
| recovery | render budget | 208 | ship |
| stale | geometry span | 173 | ship |

Start with `stress` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `edge` becomes less cautious without a clear reason, I would inspect the drag input first.
