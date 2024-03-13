# tstrait paper

This directory includes the Jupyter notebook files to generate the figure used in the `tstrait` paper.

## Requirements:

The required packages to run the Jupyter notebook file are stated in `requirements/requirements.txt` (See [here](requirements/requirements.txt)). Please install them before running the codes.

Please see

- [tstrait installation](https://tskit.dev/tstrait/docs/stable/install.html)
- [tskit installation](https://tskit.dev/tskit/docs/stable/installation.html)

for details on installing the packages.

## Jupyter Notebook

We now describe the Jupyter notebooks that are used to generate the figures in the paper.

1. `French-Canadian-1000-Genomes.ipynb`

This notebook loads the French Canadian dataset and the inferred tree sequence data from the 1000 Genomes Project, and examines the simulation time of `tstrait`. The output is used inside the paper.

2. `num-individual-figure.ipynb`

This notebook creates a supplementary figure to examine how the number of individuals in the simulated tree sequence influences simulation time. `stdpopsim` is used to simulate tree sequence data.

3. `tree-fig.ipynb`

This notebook is used to create a simple tree image in the svg format, which is used inside the paper to illustrate the `tstrait` simulation algorithm (Figure 1). After the tree image is generated, inkscape was used to generate the figure.

## Python File

1. `tskit_phenotype.py`

This Python file includes `sim_phenotype_tskit`, which is a function that uses the `tskit` functionality to simulate quantitative traits. It is used as a benchmark to compare the simulation time of `tstrait`.