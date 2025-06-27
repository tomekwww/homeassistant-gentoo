# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python API for UniFi accesspoints"
HOMEPAGE="https://pypi.org/project/unifi-ap/"
SRC_URI="https://files.pythonhosted.org/packages/dd/ca/783efbe0fb66f636d0f417098e235d82f123b63717ecfb39cd05907114bb/unifi_ap-0.0.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/unifi_ap-0.0.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	~dev-python/paramiko-3.5.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
