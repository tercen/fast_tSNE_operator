library(tercen)
library(dplyr)
library(irlba)
library(rsvd)

source('./fast_tsne.R', chdir=T)

ctx <- tercenCtx()

seed <- NULL
if(!ctx$op.value('seed') < 0) seed <- as.integer(ctx$op.value('seed'))

set.seed(seed)

tsne <- t(ctx$as.matrix())  %>% 
  fftRtsne()

colnames(tsne) <- c("tsne1", "tsne2")
tsne %>%
  as_tibble() %>%
  mutate(.ci = as.integer(seq_len(nrow(.)) - 1)) %>%
  ctx$addNamespace() %>%
  ctx$save()
