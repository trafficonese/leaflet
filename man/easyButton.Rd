% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plugin-easybutton.R
\name{easyButtonState}
\alias{easyButtonState}
\alias{easyButton}
\alias{addEasyButton}
\alias{addEasyButtonBar}
\title{Create an easyButton statestate}
\usage{
easyButtonState(stateName, icon, title, onClick)

easyButton(
  icon = NULL,
  title = NULL,
  onClick = NULL,
  position = "topleft",
  id = NULL,
  states = NULL
)

addEasyButton(map, button)

addEasyButtonBar(map, ..., position = "topleft", id = NULL)
}
\arguments{
\item{stateName}{a unique name for the state}

\item{icon}{the button icon}

\item{title}{text to show on hover}

\item{onClick}{the action to take}

\item{position}{topleft|topright|bottomleft|bottomright}

\item{id}{id for the button}

\item{states}{the states}

\item{map}{a map widget object}

\item{button}{the button object created with \code{\link[=easyButton]{easyButton()}}}

\item{...}{a list of buttons created with \code{\link[=easyButton]{easyButton()}}}
}
\description{
Create an easyButton statestate

Creates an easy button.

Add a EasyButton on the map
see \url{https://github.com/CliffCloud/Leaflet.EasyButton}

Add a easyButton bar on the map
see \url{https://github.com/CliffCloud/Leaflet.EasyButton}
}
\section{Functions}{
\itemize{
\item \code{easyButtonState()}: state of an easyButton.

\item \code{addEasyButton()}: add an EasyButton to the map

\item \code{addEasyButtonBar()}: add an EasyButton to the map

}}
\examples{
leaf <- leaflet() \%>\%
  addTiles() \%>\%
  addEasyButton(easyButton(
     icon = htmltools::span(class = "star", htmltools::HTML("&starf;")),
     onClick = JS("function(btn, map){ map.setZoom(1);}")))
leaf

leaf <- leaflet() \%>\%
  addTiles() \%>\%
  addEasyButtonBar(
   easyButton(
     icon = htmltools::span(class = "star", htmltools::HTML("&starf;")),
     onClick = JS("function(btn, map){ alert(\"Button 1\");}")),
   easyButton(
     icon = htmltools::span(class = "star", htmltools::HTML("&target;")),
     onClick = JS("function(btn, map){ alert(\"Button 2\");}")))
leaf


}
\seealso{
\code{\link[=easyButton]{easyButton()}}

\url{https://github.com/CliffCloud/Leaflet.EasyButton}

\code{\link[=addEasyButton]{addEasyButton()}}
}
