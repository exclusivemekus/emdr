% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emdr2.R
\name{extract.emdr2}
\alias{extract.emdr2}
\alias{coef.emdr2}
\title{Extract results from an emdr2 object}
\usage{
extract.emdr2(object, what, select = NULL)

\method{coef}{emdr2}(object, method = "coef", ...)
}
\arguments{
\item{object}{An \code{emdr2} object.}

\item{what}{A character giving the name of the element to extract.}

\item{select}{A character of numeric vector giving a subset of MIMFs 
for which to extract the element.}

\item{method}{The coefficient method linked to the regression function
used. The default should cover most cases.}

\item{...}{Additional arguments to be passed to the \code{method}.}
}
\value{
\code{extract.emdr2}: a vector, matrix or list of the extracted 
   elements. The class of the output depend on the type of element.

\code{coef.emdr2}: a nimfs x nvariable matrix of coefficients.
}
\description{
\code{extract.emdr2} extracts particular elements from an \code{emdr2} object 
   such as performance criteria or residuals.
\code{coef.emdr2} specifically extract regression coefficients.
}
\examples{
   library(dlnm)

   dat <- chicagoNMMAPS[,c("death", "temp", "rhum")]

   mimfs <- memd(dat)
   cmimfs <- combine.mimf(mimfs, list(12:13, 14:17, 18:19), 
     new.names = c("C12", "C13", "r"))

   lm.R2 <- emdr2(death ~ temp + rhum, mimf = cmimfs)
   betas.R2 <- coef(lm.R2)
   aic.R2 <- extract.emdr2(lm.R2, what = "aic")

}
\seealso{
\code{\link{emdr2}} to produce an \code{emdr2} object.
}
