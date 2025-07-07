# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library implementing ZHA for Home Assistant"
HOMEPAGE="https://pypi.org/project/zha/"
SRC_URI="https://files.pythonhosted.org/packages/52/82/a2099d0c652c991c00850731ca1de359c112762a8672f82fa5438798dd6f/zha-0.0.62.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/zha-0.0.62"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/zigpy-0.80.1[${PYTHON_USEDEP}]
	~dev-python/bellows-0.45.2[${PYTHON_USEDEP}]
	~dev-python/zigpy-znp-0.14.1[${PYTHON_USEDEP}]
	~dev-python/zigpy-deconz-0.25.0[${PYTHON_USEDEP}]
	~dev-python/zigpy-xbee-0.21.0[${PYTHON_USEDEP}]
	~dev-python/zigpy-zigate-0.13.3[${PYTHON_USEDEP}]
	~dev-python/zha-quirks-0.0.139[${PYTHON_USEDEP}]
	~dev-python/pyserial-3.5.0[${PYTHON_USEDEP}]
	dev-python/pyserial-asyncio-fast[${PYTHON_USEDEP}]
"

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
