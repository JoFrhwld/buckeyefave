## code to prepare `buckeye_points` dataset goes here

library(dplyr)
library(readr)
library(purrr)

all_points <- list.files("buckeye_fave/",
                         pattern = "*\\d.txt",
                         full.names = T)

col_spec <- cols(
  age = col_character(),
  city = col_character(),
  ethnicity = col_character(),
  first_name = col_character(),
  last_name = col_character(),
  location = col_character(),
  name = col_character(),
  sex = col_character(),
  state = col_character(),
  tiernum = col_double(),
  year = col_character(),
  years_of_schooling = col_character(),
  vowel = col_character(),
  stress = col_character(),
  pre_word = col_character(),
  word = col_character(),
  fol_word = col_character(),
  F1 = col_double(),
  F2 = col_double(),
  F3 = col_double(),
  B1 = col_double(),
  B2 = col_double(),
  B3 = col_double(),
  t = col_double(),
  beg = col_double(),
  end = col_double(),
  dur = col_double(),
  plt_vclass = col_character(),
  ipa_vclass = col_character(),
  plt_manner = col_character(),
  plt_place = col_character(),
  plt_voice = col_character(),
  plt_preseg = col_character(),
  plt_folseq = col_character(),
  style = col_character(),
  glide = col_character(),
  pre_seg = col_character(),
  fol_seg = col_character(),
  context = col_character(),
  vowel_index = col_double(),
  pre_word_trans = col_character(),
  word_trans = col_character(),
  fol_word_trans = col_character(),
  `F1@20%` = col_double(),
  `F2@20%` = col_double(),
  `F1@35%` = col_double(),
  `F2@35%` = col_double(),
  `F1@50%` = col_double(),
  `F2@50%` = col_double(),
  `F1@65%` = col_double(),
  `F2@65%` = col_double(),
  `F1@80%` = col_double(),
  `F2@80%` = col_double(),
  nFormants = col_double()
)

buckeye_points <- map_dfr(all_points, ~read_tsv(.x, col_types = col_spec))


usethis::use_data(buckeye_points, compress = "xz")
