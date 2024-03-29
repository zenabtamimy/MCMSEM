\name{MCMSEM}
\alias{MCMSEM}
\title{Multi co-moment structural equation models}
\description{
  Runs a multi co-moment structural equation model.
}
\usage{
MCMSEM(data, confounding="positive", compute_se=TRUE, bootstrap_type="two-step", bootstrap_iter=200)
}
\arguments{
  \item{data}{A matrix or data.frame of 2 columns with the two variables of interest. Currenyly MCMSEM is limited to bivariate analysis and we recomend residualizing the focal variables for known confounders and covariates of note (Sex, Age, etc) prior to analysis.}
  \item{confounding}{Whether positive or negative confounding should be fitted. Should be either 'positive' or 'negative'.}
  \item{compute_se}{Whether SE should be computed (TRUE or FALSE), this is done through bootstrapping.}
  \item{bootstrap_type}{Only relevant if compute_se=TRUE, type of bootstrap performed, either 'one-step': ..., or 'two-step': ...}
  \item{bootstrap_iter}{Number of bootstrap iterations}
  \item{bootstrap_chunk}{Chunksize of two-step bootstrap. Lower numbers will lead to better performance but may lead to less accurate estimates.}
}
\value{
  The function by default outputs a dataframe with estimates in each column. If compute_se=TRUE the output will contain a second row with SE for each estimate.
  If confounding='both' a list of two of these dataframes with names positive_confounding and negative_confounding is returned.
}

\examples{
  MCMSEM(data, confounding="positive")
}
