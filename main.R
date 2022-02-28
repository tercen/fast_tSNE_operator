library(tercen)
library(dplyr)
library(irlba)
library(rsvd)

source('./fast_tsne.R', chdir=T)

ctx <- tercenCtx()
tsne <- t(ctx$as.matrix())  %>% 
  fftRtsne()

colnames(tsne) <- c("tsne1", "tsne2")
tsne %>%
  as_tibble() %>%
  mutate(.ci = as.integer(seq_len(nrow(.)) - 1)) %>%
  ctx$addNamespace() %>%
  ctx$save()
