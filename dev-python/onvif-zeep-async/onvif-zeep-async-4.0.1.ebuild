# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Async Python Client for ONVIF Camera"
HOMEPAGE="http://github.com/hunterjm/python-onvif-zeep-async"
SRC_URI="https://files.pythonhosted.org/packages/9d/49/460046553d6bf1c8e272f84d365a1bd8bc30ea3a5cb5fb16168e1e1de364/onvif_zeep_async-4.0.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/onvif_zeep_async-4.0.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiohttp-3.12.9[${PYTHON_USEDEP}]
	<dev-python/httpx-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/httpx-0.19.0[${PYTHON_USEDEP}]
	<dev-python/zeep-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/zeep-4.2.1[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.1.3[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.10.0[${PYTHON_USEDEP}]
"

src_prepare() {
    echo -ne '\nbuild-backend = "setuptools.build_meta"\n' >> pyproject.toml || die
    distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
