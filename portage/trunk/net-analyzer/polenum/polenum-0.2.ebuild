# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="a python script for extracting the password policy information from a Windows/Samba machine."
HOMEPAGE="http://labs.portcullis.co.uk/application/polenum/"
SRC_URI="http://labs.portcullis.co.uk/download/${P}.tar.bz2"

LICENSE="Apache-1.1"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="dev-lang/python
		dev-python/Impacket"

src_install () {
	dobin polenum.py || die "install failed"
	dosym /usr/bin/polenum.py /usr/bin/polenum
}
