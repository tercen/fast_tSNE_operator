library(tercen)
library(dplyr)
library(irlba)
library(rsvd)

source('./fast_tsne.R', chdir=T)

options("tercen.workflowId" = "7eee20aa9d6cc4eb9d7f2cc2430313b6")
options("tercen.stepId"     = "7a090727-a2bd-4237-875f-0ec28ddbd418")

ctx <- tercenCtx()

seed <- NULL
if(!ctx$op.value('seed') < 0) seed <- as.integer(ctx$op.value('seed'))
seed <- 42

set.seed(seed)

tsne <- t(ctx$as.matrix())  %>% 
  fftRtsne()

colnames(tsne) <- c("tsne1", "tsne2")
tsne %>%
  as_tibble() %>%
  mutate(.ci = as.integer(seq_len(nrow(.)) - 1)) %>%
  ctx$addNamespace() %>%
  ctx$save()
