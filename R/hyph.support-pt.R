# Copyright 2017 Meik Michalke <meik.michalke@hhu.de>
#
# This file is part of the R package sylly.pt.
#
# sylly.pt is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# sylly.pt is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with sylly.pt.  If not, see <http://www.gnu.org/licenses/>.

#' Language support for Portuguese
#' 
#' This function adds support for Portuguese to the sylly package. You should not
#' need to call it manually, as that is done automatically when this package is
#' loaded.
#' 
#' In particular, a new set of hyphenation patterns is being added (see \code{\link{hyph.pt}}).
#'
#' @seealso
#'    \code{\link[sylly:hyphen]{hyphen}},
#'    \code{\link[sylly:set.hyph.support]{set.hyph.support}}
#' @importFrom sylly set.hyph.support
#' @export
hyph.support.pt <- function() {
  # tell sylly where to find hyphenation patterns (see ?set.hyph.support for details)
  sylly::set.hyph.support(
    value=list(
      "pt"=c("pt", package="sylly.pt")
    )
  )
}

# this internal, non-exported function causes the language support to be
# properly added when the package gets loaded
.onAttach <- function(...) {
  hyph.support.pt()
}
