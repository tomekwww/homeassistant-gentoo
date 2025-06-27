# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="UpCloud API Client"
HOMEPAGE="https://github.com/UpCloudLtd/upcloud-python-api"
SRC_URI="https://files.pythonhosted.org/packages/ea/57/417e84ac8d008424c46e4cefa161cf9b316b3d7a7c797a2d9d871c5c4455/upcloud_api-2.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/upcloud_api-2.6.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
