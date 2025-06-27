# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Homematic interface"
HOMEPAGE="https://github.com/danielperna84/pyhomematic"
SRC_URI="https://files.pythonhosted.org/packages/8d/89/a33523d02fafd715ff4d08c1631240dc4c140bc0d31df2ef41cd9e62f0c8/pyhomematic-0.1.77.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pyhomematic-0.1.77"

LICENSE="MIT"
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
