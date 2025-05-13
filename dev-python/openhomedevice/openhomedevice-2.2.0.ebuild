# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Provides an API for requesting information from an Openhome device"
HOMEPAGE="https://github.com/bazwilliams/openhomedevice"
SRC_URI="https://files.pythonhosted.org/packages/5b/28/d63f5c2d911b38daa5cab40dd83be4f7eb1bcbf4c60f24308cf364f2d695/openhomedevice-2.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
