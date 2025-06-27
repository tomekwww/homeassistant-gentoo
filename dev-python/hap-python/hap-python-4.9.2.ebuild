# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="HomeKit Accessory Protocol implementation in python"
HOMEPAGE="https://github.com/ikalchev/HAP-python"
SRC_URI="https://files.pythonhosted.org/packages/4e/a6/b25430858a4d213e7a3bb1135b70d77d61d2bbc46480a38751b87ca2f9a1/hap_python-4.9.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hap_python-4.9.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/async-timeout[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/chacha20poly1305-reuseable[${PYTHON_USEDEP}]
	>=dev-python/orjson-3.7.2[${PYTHON_USEDEP}]
	>=dev-python/zeroconf-0.36.2[${PYTHON_USEDEP}]
	dev-python/h11[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
