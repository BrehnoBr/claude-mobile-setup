# claude-mobile-setup

Repositorio modelo para usar suas skills e plugins no Claude Code na web e no celular.
Tudo o que esta em `.claude/` carrega sozinho em toda sessao deste repositorio.

## O que tem aqui
- `.claude/skills/` - 32 skills (ponytail, caveman, megacave, ultracave, workflows de codigo, stitch-*, graphify, shadcn-ui, remotion...).
- `.claude/settings.json` - registra os marketplaces e habilita os plugins `claude-image-generation` e `claude-mem`; liga o hook de inicio.
- `.claude/hooks/session-start.sh` - so em sessao na nuvem: instala `design-taste-frontend` (40 MB, fora do repo), `playwright-cli` e `graphifyy`.
- `.mcp.json` - servidor MCP do Stitch; a chave vem da variavel `STITCH_API_KEY`.
- `.playwright/cli.config.json` - deixa o playwright-cli abrir o Chrome na nuvem.
- `CLAUDE.md` - preferencias (responder em portugues, usar ponytail e dev-workflow).

## Como ativar
1. Crie um repositorio PRIVADO no GitHub (ex.: `meu-claude-setup`) e envie estes arquivos, incluindo as pastas ocultas:
   ```
   git init && git add -A && git commit -m "setup" && git branch -M main
   git remote add origin https://github.com/SEU_USUARIO/meu-claude-setup.git && git push -u origin main
   ```
2. No Claude Code na web (claude.ai/code) ou no app do celular, conecte o GitHub e escolha esse repositorio.
3. Nas configuracoes do ambiente da nuvem, cadastre as chaves como variaveis de ambiente (nunca no repositorio):
   `STITCH_API_KEY`, `GEMINI_API_KEY` (ou `OPENAI_API_KEY`, `XAI_API_KEY`, `OPENROUTER_API_KEY`).
4. Ainda nas configuracoes do ambiente, libere acesso de rede para as APIs que for usar. Com rede restrita, geracao de imagens e Stitch nao funcionam.
5. Na primeira sessao, aprove os marketplaces, os plugins e o servidor Stitch quando o Claude pedir.

## Limites
- Nao incluidos: `omniroute` (servidor local) e `headroom` (feito para o VS Code do PC).
- Plugins que dependem de terminal com imagem inline ou de tmux (como a exibicao de imagens do claude-image-generation) podem se comportar diferente na nuvem.
- Skills rodam com as permissoes do agente. Revise antes de usar com algo sensivel.
- Nao testado em um celular real.
