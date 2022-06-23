# Fast t-SNE operator

##### Description

The `Fast t-SNE` operator performs the Fast Fourier Transform Interpolation-based t-SNE dimensionality reduction method.

##### Usage

Input projection|.
---|---
`row`   | represents the variables (e.g. genes, channels, markers)
`col`   | represents the observations (e.g. cells, samples, individuals) 
`y-axis`| measurement value


Output relations|.
---|---
`tsne1, tsne2`| first two components containing the new projected values


##### Reference

This operator is a wrapper of the `fftRtsne()` R function from the [FFT-accelerated Interpolation-based t-SNE repository](https://github.com/KlugerLab/FIt-SNE).

##### See Also

[tsne](https://github.com/tercen/tsne_operator)

[pca](https://github.com/tercen/pca_operator)

