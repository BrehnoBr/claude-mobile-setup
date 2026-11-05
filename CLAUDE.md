# Preferencias
- Responda sempre em portugues.

# Skills e plugins: uso obrigatorio quando aplicavel
- Antes de cada tarefa, confira as skills e plugins disponiveis e use TODOS os que se aplicarem. Nao pule uma skill por achar a tarefa simples.
- Codigo (escrever, corrigir, refatorar, revisar): `ponytail` + `dev-workflow` (ou `surgical-patch`, `safe-refactor`, `lean-build`, `investigate-first`, `migration`, `verify-and-stop`).
- Interface, sites, paginas: `design-taste-frontend`, e as skills `stitch-*`, `taste-design`, `shadcn-ui` quando couber.
- Entender um projeto ou repositorio: `graphify`, `caveman-explore`, plugin `claude-mem` (memoria entre sessoes).
- Imagens: plugin `claude-image-generation`.
- Navegador e testes de fluxo: `playwright-cli`.
- Economia de tokens: `caveman` e `caveman-compress` quando o usuario pedir.
- Se uma skill ou plugin aplicavel nao funcionar (falta de chave, rede bloqueada), diga qual e por que, em vez de ignorar em silencio.

# Uso de skills e plugins (regra permanente)
- Antes de cada tarefa, avalie quais skills e plugins instalados se aplicam e use os relevantes, sem esperar o usuario pedir.
- Codigo: `ponytail` e `dev-workflow` (investigate-first, surgical-patch, lean-build, safe-refactor, migration, verify-and-stop). Interface e sites: `design-taste-frontend`, `taste-design`, `shadcn-ui`, `stitch-*`. Entender repositorio: `graphify`, `smart-explore`, `mem-search`. Economia de tokens: `caveman` quando pedido.
- Acoes com efeito fora da sessao (release, version-bump, cloud-sync, backup, babysit, push, deletar) so com pedido explicito do usuario.
- Se nenhuma skill se aplica, siga sem usar. Nao invoque skill so por invoca-la.
