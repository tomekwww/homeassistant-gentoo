# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="MessageBirds REST API"
HOMEPAGE="https://github.com/messagebird/python-rest-api"
SRC_URI="https://files.pythonhosted.org/packages/4d/9f/e52ed22f65c507a0cd15cbc66e5dde7148efbc2582a7aa6a3ac9a9433b43/messagebird-1.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/messagebird-1.2.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
