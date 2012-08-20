# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit versionator python cmake-utils git-2

DESCRIPTION="This module implements a complete Mode S and ADS-B receiver for Gnuradio"
HOMEPAGE="https://www.cgran.org/wiki/gr-air-modes"

EGIT_REPO_URI="https://github.com/bistromath/gr-air-modes.git"
EGIT_BRANCH="master"
#EGIT_BRANCH="qtapp"

KEYWORDS=""

LICENSE="GPL-3"
SLOT="0"
IUSE="+rtl fgfs uhd"
DEPEND=">=net-wireless/gnuradio-3.6.1
	net-wireless/gr-osmosdr
	fgfs? ( sci-libs/scipy
		games-simulation/flightgear )
	rtl? ( net-wireless/rtl-sdr )
	uhd? ( net-wireless/uhd )"
RDEPEND="${DEPEND}"

pkg_setup() {
        python_set_active_version 2
        python_pkg_setup
}

src_compile() {
	cmake-utils_src_compile -j1
}
