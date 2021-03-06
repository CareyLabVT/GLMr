% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_glm.R
\name{run_glm}
\alias{run_glm}
\title{run the GLM model}
\usage{
run_glm(sim_folder = ".", verbose = TRUE, args = character())
}
\arguments{
\item{sim_folder}{the directory where simulation files are contained}

\item{verbose}{should output of GLM be shown}

\item{args}{Optional arguments to pass to GLM executable}
}
\description{
This runs the GLM model on the specific simulation stored in \code{sim_folder}. 
The specified \code{sim_folder} must contain a valid NML file.
}
\examples{
sim_folder <- system.file('extdata', package = 'GLMr')
run_glm(sim_folder)
\dontrun{
out_file <- file.path(sim_folder,'output.nc')
nml_file <- file.path(sim_folder,'glm2.nml')
library(glmtools)
fig_path <- tempfile("temperature", fileext = '.png')
plot_temp(file = out_file, fig_path = fig_path)
cat('find plot here: '); cat(fig_path)
}
}
\author{
Jordan Read, Luke Winslow
}
\keyword{methods}
