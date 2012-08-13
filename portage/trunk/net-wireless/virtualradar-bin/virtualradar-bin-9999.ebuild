# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="Open-source .NET application for ads-b mapping"
HOMEPAGE="http://www.virtualradarserver.co.uk/Default.aspx"
SRC_URI="http://www.virtualradarserver.co.uk/Files/VirtualRadar.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-lang/mono"

S="${WORKDIR}"

src_install() {
	insinto /opt/${PN}
	doins *
	dobin "${FILESDIR}"/virtualradar
}
