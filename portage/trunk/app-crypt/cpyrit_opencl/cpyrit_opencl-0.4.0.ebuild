# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

PYTHON_DEPEND="2"

inherit eutils python distutils subversion flag-o-matic

DESCRIPTION="A GPU-based WPA-PSK and WPA2-PSK cracking tool"
HOMEPAGE="http://code.google.com/p/pyrit/"
ESVN_REPO_URI="http://pyrit.googlecode.com/svn/trunk/@294"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND="!<app-crypt/pyrit-0.3-r1
	dev-db/sqlite:3
	dev-lang/python[sqlite]
	>=dev-util/ati-stream-sdk-bin-2.0
	>=x11-drivers/ati-drivers-10.0"
RDEPEND="${DEPEND}"

pkg_setup() {
	append-ldflags $(no-as-needed)
	python_set_active_version 2
	python_pkg_setup
}

src_compile() {
	epatch "${FILESDIR}/${P}.patch"
	cd "${S}/cpyrit_opencl"
	distutils_src_compile
}

src_install() {
	cd "${S}/cpyrit_opencl"
	distutils_src_install
}
