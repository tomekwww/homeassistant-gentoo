# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Home Assistant cloud integration by Nabu Casa Inc"
HOMEPAGE="https://pypi.org/project/hass-nabucasa/"
SRC_URI="https://files.pythonhosted.org/packages/2c/b5/91e0240b0db6954f3c944f7a9b0c105cb69a186b4d1e864c4155d4d95990/hass_nabucasa-0.101.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/hass_nabucasa-0.101.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/acme-3.3.0[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.6.1[${PYTHON_USEDEP}]
	>=dev-python/async-timeout-4.0.0[${PYTHON_USEDEP}]
	~dev-python/atomicwrites-homeassistant-1.4.1[${PYTHON_USEDEP}]
	>=dev-python/attrs-19.3.0[${PYTHON_USEDEP}]
	>=dev-python/ciso8601-2.3.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-42.0.0[${PYTHON_USEDEP}]
	<dev-python/josepy-2.0.0[${PYTHON_USEDEP}]
	~dev-python/pycognito-2024.5.1[${PYTHON_USEDEP}]
	>=dev-python/pyjwt-2.8.0[${PYTHON_USEDEP}]
	~dev-python/snitun-0.40.0[${PYTHON_USEDEP}]
	<dev-python/webrtc-models-1.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
