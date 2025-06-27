# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A SansIO Python client library for Brultech Devices"
HOMEPAGE="https://pypi.org/project/siobrultech-protocols/"
SRC_URI="https://files.pythonhosted.org/packages/56/67/ce79202612d8e6c191bda04b885f70b91d8c6ac76a360309a148f295e8eb/siobrultech-protocols-0.5.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/siobrultech-protocols-0.5.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
