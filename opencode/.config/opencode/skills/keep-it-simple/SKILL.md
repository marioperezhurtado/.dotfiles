---
name: keep-it-simple
description: Use ONLY when the user asks for a small code change, bug fix, simple implementation, or explicitly says to keep it simple, avoid overengineering, make a minimal change, or avoid extra work.
---

# Keep It Simple

Prefer the smallest correct change that solves the current request.

## Rules

- Do only what the user asked.
- Solve the problem that exists now, not a possible future problem.
- Prefer direct, concrete code over abstraction.
- Prefer local changes over broad refactors.
- Preserve existing style, structure, naming, and architecture.
- Do not refactor unrelated code.
- Do not reformat files unless required.
- Do not add comments unless required.
- Do not add dependencies unless explicitly required.
- Do not add extra features, docs, tests, cleanup, or new patterns unless required.
- Duplication is acceptable until there are at least 3 concrete existing cases.
- If unsure, choose the least invasive reasonable implementation.

## Avoid Unless Clearly Required

- factories
- builders
- abstract classes
- generic utilities
- config systems
- dependency injection
- wrappers
- plugin systems
- “future-proof” architecture

## Before Adding Abstraction

Ask:

- Do we need this today?
- Are there 3+ concrete existing cases?
- Is the duplication causing an actual problem?
- Is the pattern stable?

If not, do not abstract.

## Never Justify With

- “for future extensibility”
- “in case we need it later”
- “for flexibility”
- “this could be configurable”

## Response Style

After changing code, summarize only:

- what changed
- why it was necessary
- how to verify it
