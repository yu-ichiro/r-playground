FROM rocker/tidyverse

RUN apt-get update && apt-get install -y \
  build-essential \
  libglpk40

ARG GITHUB_PAT
RUN R -e 'devtools::install_github("kosukeimai/qss-package")'
RUN R -e 'devtools::install_github("sctyner/geomnet")'
RUN R -e 'devtools::install_github("jrnold/qss-tidy")'