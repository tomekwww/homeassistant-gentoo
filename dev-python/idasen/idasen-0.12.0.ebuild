# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ikea IDSEN desk API and CLI"
HOMEPAGE="https://github.com/newAM/idasen"
SRC_URI="https://files.pythonhosted.org/packages/00/68/4efe8a2064036a3bc83321f68fcfe2290408cfdaa0f0e12a8243d27304e4/idasen-0.12.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/idasen-0.12.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/bleak-0.15.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.3.1[${PYTHON_USEDEP}]
	>=dev-python/voluptuous-0.12.0[${PYTHON_USEDEP}]
"
