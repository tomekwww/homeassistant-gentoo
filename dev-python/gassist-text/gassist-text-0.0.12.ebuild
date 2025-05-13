# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python library for interacting with Google Assistant API via text"
HOMEPAGE="https://pypi.org/project/gassist-text/"
SRC_URI="https://files.pythonhosted.org/packages/31/83/349dd3db88f4471c03eadc67a203336cecf2001ade02bbcf7e7899699f1a/gassist_text-0.0.12.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/google-auth-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/grpcio-1.48.0[${PYTHON_USEDEP}]
	>=dev-python/protobuf-3.20.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
"
