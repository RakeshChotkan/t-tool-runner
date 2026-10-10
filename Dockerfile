# Self-hosted GitHub Actions runner voor T-Tool: schone Python 3.6 en 3.9,
# het testharnas (Python 3.12 met pyte, vermin, flake8), svn en less.
FROM myoung34/github-runner:latest

RUN apt-get update \
 && apt-get install -y --no-install-recommends subversion less bzip2 \
 && rm -rf /var/lib/apt/lists/*

ENV MAMBA_ROOT_PREFIX=/opt/conda
RUN curl -fsSL https://micro.mamba.pm/api/micromamba/linux-64/latest \
      | tar -xj -C /usr/local/bin --strip-components=1 bin/micromamba \
 && micromamba create -y -n py3.6 -c conda-forge python=3.6 \
 && micromamba create -y -n py3.9 -c conda-forge python=3.9 \
 && micromamba create -y -n harnas -c conda-forge python=3.12 pip \
 && micromamba run -n harnas pip install --no-cache-dir pyte vermin flake8 \
 && micromamba clean -a -y
