# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library for the Google Nest SDM API"
HOMEPAGE="https://github.com/allenporter/python-google-nest-sdm"
SRC_URI="https://files.pythonhosted.org/packages/b4/05/d3e455ab73653109ee3cc5c23d7888ee3d20fe719927b2e8cf406006ab9c/google_nest_sdm-7.1.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/google_nest_sdm-7.1.4"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.7.3[${PYTHON_USEDEP}]
	>=dev-python/google-auth-1.22.0[${PYTHON_USEDEP}]
	>=dev-python/google-auth-oauthlib-0.4.1[${PYTHON_USEDEP}]
	>=dev-python/google-cloud-pubsub-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/requests-oauthlib-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-6.0.0[${PYTHON_USEDEP}]
	>=dev-python/mashumaro-3.12.0[${PYTHON_USEDEP}]
"
