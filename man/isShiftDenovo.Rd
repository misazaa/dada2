% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chimeras.R
\name{isShiftDenovo}
\alias{isShiftDenovo}
\title{Identify sequences that are identical to a more abundant sequence up to an
overall shift.}
\usage{
isShiftDenovo(unqs, minOverlap = 20, flagSubseqs = FALSE, verbose = FALSE)
}
\arguments{
\item{unqs}{(Required). A \code{\link{uniques-vector}} or any object that can be coerced
into one with \code{\link{getUniques}}.}

\item{minOverlap}{(Optional). A \code{numeric(1)}. Default is 20.
Minimum overlap required to call something a shift.}

\item{flagSubseqs}{(Optional). A \code{logical(1)}. Default is FALSE.
Whether or not to flag strict subsequences as shifts.}

\item{verbose}{(Optional). \code{logical(1)} indicating verbose text output. Default FALSE.}
}
\value{
\code{logical} of length the number of input unique sequences.
 TRUE if sequence is an exact shift of a more abundant sequence. Otherwise FALSE.
}
\description{
This function is a wrapper around isShift for collections of unique
sequences. Each unique sequence is evaluated against a set of "parents" drawn from
the sequence collection that are more abundant than the sequence being evaluated.
}
\examples{
derep1 = derepFastq(system.file("extdata", "sam1F.fastq.gz", package="dada2"))
dada1 <- dada(derep1, err=tperr1, errorEstimationFunction=loessErrfun, selfConsist=TRUE)
isShiftDenovo(dada1)
isShiftDenovo(dada1$denoised, minOverlap=50, verbose=TRUE)

}
\seealso{
\code{\link{isBimera}}
}
