# Fast t-SNE operator

##### Description

The `Fast t-SNE` operator performs the Fast Fourier Transform Interpolation-based t-SNE dimensionality reduction method.

##### Usage

Input projection|.
---|---
`row`   | represents the variables (e.g. genes, channels, markers)
`col`   | represents the observations (e.g. cells, samples, individuals) 
`y-axis`| measurement value

Input parameters|.
---|---
`dims`   | logical, output dimensionality, default 2
`initial_dims`   | numeric, the number of dimensions that should be retained in the initial PCA step, default 50

Output relations|.
---|---
`tsne1, tsne2`| first two components containing the new projected values

##### Details

The operator performs tSNE analysis. It reduces the amount of variables (i.e. indicated by rows) to a lower number (default 2).

##### Reference

[FFT-accelerated Interpolation-based t-SNE](https://github.com/KlugerLab/FIt-SNE)

##### See Also

[tsne](https://github.com/tercen/tsne_operator)
[pca](https://github.com/tercen/pca_operator)

