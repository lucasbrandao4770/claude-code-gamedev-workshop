# Claude Code para Game Dev 🎮

> Da Ideia ao Protótipo Jogável — Workshop The Plumbers

## O que é isso?

Este repositório contém tudo que você precisa para criar protótipos de jogos usando Claude Code + Godot MCP. Inclui skills pré-configuradas, templates para diferentes gêneros de jogos, assets gratuitos organizados, e ferramentas de análise.

## Pré-requisitos

### 1. Godot Engine 4.x (grátis)
- Download: https://godotengine.org/download/
- Instalar e anotar o caminho do executável

### 2. Claude Code
- Necessário conta Anthropic
- Instalação: https://docs.anthropic.com/en/docs/claude-code

### 3. Node.js 18+ (para o MCP)
- Download: https://nodejs.org/

### 4. Godot MCP
```bash
git clone https://github.com/Coding-Solo/godot-mcp.git
cd godot-mcp
npm ci
npm run build
```

## Setup Rápido

### 1. Clone este repo
```bash
git clone https://github.com/lucasbrandao4770/claude-code-gamedev-workshop.git
cd claude-code-gamedev-workshop
```

### 2. Configure o MCP
```bash
cp .mcp.json.example .mcp.json
```
Edite `.mcp.json` com seus caminhos locais:
- `<PATH_TO_GODOT_MCP>` → caminho onde clonou o godot-mcp
- `<PATH_TO_GODOT_EXECUTABLE>` → caminho do executável do Godot

### 3. Crie um projeto Godot
- Abra o Godot → New Project
- Siga as instruções em `templates/<gênero>/README.md`

### 4. Comece a construir!
```bash
claude
```
Claude vai detectar as skills automaticamente e guiar o processo.

## O que está incluso

### Skills (`.claude/skills/`)
| Skill | Descrição |
|-------|-----------|
| `game-creation` | Orquestra todo o processo: entrevista → GDD → assets → build → polish |
| `gdscript` | Convenções de GDScript 4.x, type safety, Context7 |
| `godot-mcp` | Uso correto das ferramentas MCP, workflow, limitações conhecidas |
| `tscn-editor` | Edição segura de arquivos .tscn/.tres |
| `godot` | Arquitetura do Godot, formatos de arquivo, CLI |

### Templates (`templates/`)
| Template | Gênero |
|----------|--------|
| `zelda-like-rpg` | RPG de ação top-down (estilo Zelda) |
| `platformer` | Plataforma side-scrolling |
| `tower-defense` | Tower Defense |
| `puzzle` | Jogos de puzzle |

Cada template inclui: `README.md` (setup), `CLAUDE.md` (contexto para Claude), `ASSET-SOURCES.md` (fontes de assets grátis).

### Assets (`assets/`)
Assets gratuitos pré-organizados por gênero:
- **shared/** — Música (xDeviruchi), SFX (Kenney), fontes, ícones, VFX
- **rpg/** — CraftPix Swordsman, Slimes, Pixel Crawler tileset/NPCs
- **platformer/** — Pixel Adventure, Kings and Pigs, Sunny Land
- **tower-defense/** — Kenney TD tileset, mobs
- **puzzle/** — Kenney Puzzle Packs, backgrounds, UI

### Ferramentas (`tools/`)
- `analyze_sprites.py` — Analisa sprite sheets (tamanho de frame, contagem de frames, mapeamento de direções)

## Recursos Extras

| Recurso | Link |
|---------|------|
| Godot Engine | https://godotengine.org/ |
| Godot MCP | https://github.com/Coding-Solo/godot-mcp |
| Kenney Assets (CC0) | https://kenney.nl/ |
| CraftPix (grátis) | https://craftpix.net/freebies/ |
| itch.io (assets) | https://itch.io/game-assets/free |
| OpenGameArt | https://opengameart.org/ |
| PixelLab (IA) | https://www.pixellab.ai/ |
| jsfxr (SFX retro) | https://sfxr.me/ |
| Suno (música IA) | https://suno.com/ |

## Créditos

Todos os assets utilizados são gratuitos para uso pessoal e/ou comercial. Verifique as licenças individuais em cada `ASSET-SOURCES.md` dos templates.

## Licença

Código e templates: MIT
Assets: licenças individuais (veja ASSET-SOURCES.md)
