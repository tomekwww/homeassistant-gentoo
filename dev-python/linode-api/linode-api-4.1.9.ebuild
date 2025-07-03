# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The official python SDK for Linode API v4"
HOMEPAGE="https://github.com/linode/python-linode-api"
SRC_URI="https://files.pythonhosted.org/packages/92/20/130641a81ede247f8c56347b84a34e7d5fb858f950d3c2c7c23fc1b83fbb/linode-api-4.1.9b1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/linode-api-4.1.9b1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/test" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/test"
    fi
    distutils-r1_src_install
}
