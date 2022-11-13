#' Buckeye Formant Data
#'
#' @description All FAVE-extrated formant data from the Buckeye Corpus
#'
#' @format A data frame with 225722 rows and 54 variables:
#' \describe{
#'   \item{\code{age, city, ethnicity, first_name, last_name, location,
#'               state, year, years_of_schooling, style}}{
#'               character These are all data columns that could
#'               potentially be defined when calling FAVE-extract,
#'               but in this case were not.
#'               }
#'   \item{\code{name}}{character Speaker name, in this case, the Buckeye corpus ID}
#'   \item{\code{sex}}{character Speaker gender, as provided by
#'                     the Buckeye corpus handbook}
#'   \item{\code{tiernum}}{double Speaker tier}
#'   \item{\code{vowel}}{character CMUDICT vowel code}
#'   \item{\code{stress}}{character vowel stress}
#'   \item{\code{pre_word, word, fol_word}}{
#'             character Orthographic transcriptions  of the preceding, current,
#'             and following words
#'             }
#'   \item{\code{F1, F2, F2}}{double First, second and third formants in Hz.}
#'   \item{\code{B1, B2, B3}}{double The bandwidths of F1, F2 and F3}
#'   \item{\code{t}}{
#'       double The measurement point for the vowel, in seconds, relative to
#'       the entire recording.
#'    }
#'   \item{\code{beg}}{
#'       double Vowel start time, in seconds, relative to the entire recording.
#'    }
#'   \item{\code{end}}{
#'       double Vowel end time, in seconds, relative to the entire recording.
#'    }
#'   \item{\code{dur}}{
#'       double Vowel duration, in seconds. Equal to \code{end - beg}
#'    }
#'   \item{\code{plt_vclass}}{
#'       character Labov/Trager-like coding of the vowel class
#'    }
#'   \item{\code{ipa_vclass}}{
#'       character IPA-like coding of the vowel class
#'    }
#'   \item{\code{plt_manner, plt_place, plt_voice}}{
#'       character Plotnik coding of the following segment's manner, place
#'       and voicing
#'    }
#'   \item{\code{plt_preseg}}{
#'       character Plotnik coding of the preceeding segment
#'    }
#'   \item{\code{plt_folseq}}{
#'       character Plotnik coding of the following sequence
#'    }
#'   \item{\code{glide}}{
#'       character /ay/ offglide coding
#'    }
#'   \item{\code{pre_seg, fol_seg}}{
#'       character CMU dict entry for the preceding and following segment,
#'       regardless of word boundaries
#'    }
#'   \item{\code{context}}{
#'       character coding of location within word. Options are initial, internal
#'       final, or coextensive.
#'    }
#'   \item{\code{vowel_index}}{
#'       double 1-indexed location of vowel in the worx transcription
#'    }
#'   \item{\code{pre_word_trans, word_trans, fol_word_trans}}{
#'       character CMUDICT transcriptions of the preceding, current, and
#'       following words
#'    }
#'   \item{\code{[F1, F2]@[20,35,50,65,80]\%}}{
#'       F1 and F2 values at 20%, 35%, 50%, 65% and 80% of the
#'       vowel's duration
#'    }
#'   \item{\code{nFormants}}{
#'       double The `nFormants` found optimal by FAVE-extract.
#'    }
#'}
"buckeye_points"


#' @importFrom tibble tibble
NULL
