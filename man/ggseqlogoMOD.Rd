% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggseqlogo.r
\name{ggseqlogoMOD}
\alias{ggseqlogoMOD}
\title{Modified version of ggseqlogo to display non-canonical (e.g. phosphorylated) amino acids in different color.}
\usage{
ggseqlogoMOD(data, smallSampleCorr = FALSE, col_scheme = "modified",
  additionalAA = "sty", seq_type = "aa", font = "helvetica_modified",
  legendText = FALSE, ylim = c(0, log2(20 + length(strsplit(additionalAA,
  split = "")[[1]]))), title = NULL, titleSize = 24, titlePos = 0.5,
  axisTextSizeX = 18, axisTextSizeY = 18, axisTitleSize = 18, ...)
}
\arguments{
\item{data}{A list of sequences or a position weight matrix.}

\item{smallSampleCorr}{Include small-sample correction in information content or not.}

\item{col_scheme}{Color scheme of plot.}

\item{additionalAA}{Amino acids that include a modification.}

\item{seq_type}{Sequence type of input.}

\item{font}{Font for plot.}

\item{legendText}{Plot legend or not.}

\item{ylim}{Range of y-axis.}

\item{title}{Title of plot.}

\item{titleSize}{Size of title.}

\item{titlePos}{Horizontal position of title.}

\item{axisTextSizeX}{Size of x tick labels.}

\item{axisTextSizeY}{Size of y tick labels.}

\item{axisTitleSize}{Size of axis title.}

\item{...}{Additional arguments passed to \code{\link{geom_logo}}}
}
\description{
\code{ggseqlogoMOD} Plotting the sequence logo of peptides with modifications in purple. Modified residues have to be in lowercase letters of the respective amino acid.

Default values are for sequences inlcuding phosphorylated residues (i.e. sequences over an alphabet of 23 amino acids, 20 canonical amino acids plus s, t, and y).
}
\examples{
# Load package:
library(ggseqlogo)

# Load example data:
data(data_B0702, package="ggseqlogo")

# Plot phosphorylated binding motif of HLA-B0702:
ggseqlogoMOD(b7p)
}
