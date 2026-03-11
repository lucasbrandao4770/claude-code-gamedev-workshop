# Claude Code para Game Dev — Workshop

## Overview

This repository is a workshop toolkit for building game prototypes with Claude Code + Godot MCP.

## Skills

The following skills are available in `.claude/skills/`:

| Skill | Activates When | Purpose |
|-------|---------------|---------|
| `game-creation` | Starting or resuming game development | End-to-end workflow orchestration |
| `gdscript` | Writing/editing any .gd file | GDScript 4.x conventions, type safety |
| `godot` | Working with Godot scenes, nodes, CLI | Engine architecture, file formats |
| `godot-mcp` | Calling any Godot MCP tool | Tool params, workflow, known bugs |
| `tscn-editor` | Editing any .tscn or .tres file | Format rules, safe editing |

## Templates

Genre-specific starter kits in `templates/`:
- `zelda-like-rpg/` — Top-down action RPG
- `platformer/` — 2D side-scrolling platformer
- `tower-defense/` — Tower defense
- `puzzle/` — Puzzle games

Each has a README with Godot project setup instructions.

## Assets

Pre-downloaded free assets in `assets/`, organized by genre.
Run `python tools/analyze_sprites.py <path> --recursive` before writing animation code.

## Key Rules

- Create the Godot project in the editor (don't write project.godot manually)
- Run `godot --headless --import` after adding new assets
- Use Area2D for damage, never body-to-body collision
- Set complex properties (Vector2, Color) in .tscn or _ready(), not via MCP
- Delegate heavy work to subagents to preserve main context
