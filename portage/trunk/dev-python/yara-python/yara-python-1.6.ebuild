# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_DEPEND="2:2.5"

inherit distutils

DESCRIPTION="A malware identification and classification tool"
HOMEPAGE="http://yara-project.googlecode.com/"
SRC_URI="http://yara-project.googlecode.com/files/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="~app-forensics/yara-${PV}"
RDEPEND="${DEPEND}"
