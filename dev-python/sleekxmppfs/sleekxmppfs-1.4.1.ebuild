# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A fork of SleekXMPP with TLS cert validation disabled intended only to be used with the sucks project"
HOMEPAGE="http://github.com/aszymanik/SleekXMPP"
SRC_URI="https://files.pythonhosted.org/packages/1d/bf/c157f8fbbde3b196fada67cd48de89810b0cab3121ff9eafa95d788abf63/sleekxmppfs-1.4.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sleekxmppfs-1.4.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
