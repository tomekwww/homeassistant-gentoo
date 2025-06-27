# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Asynchronous Python API client for interacting with myStrom devices"
HOMEPAGE="https://github.com/home-assistant-ecosystem/python-mystrom"
SRC_URI="https://files.pythonhosted.org/packages/94/18/76754f29de8b40b1172548c68932c19a9fe09258be52ced6b9f74b109db6/python-mystrom-2.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-mystrom-2.2.0"

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
