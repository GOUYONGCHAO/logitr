% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulation.R
\name{marketSimulation.logitr}
\alias{marketSimulation.logitr}
\title{Returns the expected market shares of a specific set of alternatives based
on an estimated model.}
\usage{
\method{marketSimulation}{logitr}(model, market, priceName = NULL,
  alpha = 0.025)
}
\description{
Returns the expected market shares of a specific set of alternatives based
on an estimated model.
}
\examples{
# Run a MNL model in the Preference Space:
data(yogurt)

mnl.pref = logitr(
  data       = yogurt,
  choiceName = 'choice',
  obsIDName  = 'obsID',
  parNames   = c('price', 'feat', 'dannon', 'hiland', 'yoplait'))

# Create a market to simulate.
market = subset(yogurt, obsID==1,
         select=c('feat', 'price', 'dannon', 'hiland', 'yoplait'))

# Run the simulation using the estimated preference space MNL model:
marketSimulation(mnl.pref, market, alpha=0.025)
}
\keyword{logitr,}
\keyword{simluation}
