# setup
library(tidyverse)
library(dplyr)
library(rio)
require(reticulate)

# conda_install(packages='sentence_transformers', pip = TRUE)
st <- import('sentence_transformers')
all_data <- read.csv("all_data.csv")


# prep model
model.name <- 'roberta-base'
roberta <- st$models$Transformer(model.name)
pooling <- st$models$Pooling(roberta$get_word_embedding_dimension())
model <- st$SentenceTransformer(modules=list(roberta,pooling))

# get embeddings
embeddings <- model$encode(all_data$responses)



