# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async single threaded connector to Splunk HEC using an asyncio session"
HOMEPAGE="https://github.com/Bre77/hass_splunk"
SRC_URI="https://files.pythonhosted.org/packages/1e/6d/6c0c3f55627fc3b804ea607003e79adca76d1e7d378da34244df72532913/hass_splunk-0.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hass_splunk-0.1.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
