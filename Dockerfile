# Minimal Docker image for pbtk using Micromamba base
FROM mambaorg/micromamba:debian13-slim

# install pbtk
RUN micromamba create -y -n pbmarkdup -c bioconda pbmarkdup==1.2.0 && \
    micromamba clean --all --yes
ENV ENV_NAME=pbmarkdup
