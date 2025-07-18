# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="WebPush publication library"
HOMEPAGE="https://github.com/web-push-libs/pywebpush"
SRC_URI="https://files.pythonhosted.org/packages/64/96/8640a3ad468cf45fd5709f7bdcc75d2acf8a65a18144f39d540e7bc36218/pywebpush-1.14.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pywebpush-1.14.1"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cryptography-2.6.1[${PYTHON_USEDEP}]
	>=dev-python/http-ece-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.15.0[${PYTHON_USEDEP}]
	>=dev-python/py-vapid-1.7.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
