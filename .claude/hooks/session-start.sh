#!/bin/bash
# Roda so em sessoes na nuvem (web/celular). No PC nao faz nada.
set -uo pipefail
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

# Skill grande (40 MB) fica fora do repositorio e e instalada aqui.
npx -y skills add Leonxlnx/taste-skill --skill design-taste-frontend -g -a claude-code -y || true

# CLIs leves. Cada falha e ignorada para nao travar a sessao.
npm install -g @playwright/cli@latest || true
pip install --break-system-packages -q graphifyy || true

exit 0
