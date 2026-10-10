# t-tool-runner

Self-hosted runner-image voor de GitHub Actions van RakeshChotkan/t-tool (privé-repo).
Bevat Python 3.6 en 3.9 (conda-forge, `/opt/conda/envs/py3.6` en `py3.9`), het harnas
(`/opt/conda/envs/harnas`: 3.12 + pyte, vermin, flake8), svn en less.
Gebouwd door GitHub Actions naar `ghcr.io/rakeshchotkan/t-tool-runner:latest`;
draait op de Synology via de Portainer-stack in `stack.yml`.
