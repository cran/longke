% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datagen.R
\name{datagen}
\alias{datagen}
\title{Simulate longitudinal data}
\usage{
datagen(ntotal,ntest,t_all,t_split,seed)
}
\arguments{
\item{ntotal}{Number of total longitudinal subjects}

\item{ntest}{Number of total longitudinal subjects in the testing set}

\item{t_all}{Vector of discrete measurement time (i.e 1,2,3,4,...)}

\item{t_split}{A measurement time where the longitudinal response is of interest to predict
after this t_split}

\item{seed}{Seed to derive replicable data}
}
\value{
A list containing two elements
\describe{
\item{train}{A long format data matrix containing one functional response (yy) and
             two functional predictors (xx,zz) with (ntotal-ntest) subjects}
\item{test}{A long format data matrix containing one functional response (yy) and
             two functional predictors (xx,zz) with (ntest) subjects}
}
}
\description{
Function used to simulate sample sparse and irregular longitudinal data
}
\examples{
data = datagen(ntotal=350,ntest=50,t_all=1:50,t_split=25,seed=1)
data$test
data$train
}
