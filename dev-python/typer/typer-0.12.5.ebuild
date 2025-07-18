# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=pdm-backend
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Typer build great CLIs Easy to code Based on Python type hints"
HOMEPAGE="https://pypi.org/project/typer/"
SRC_URI="https://files.pythonhosted.org/packages/c5/58/a79003b91ac2c6890fc5d90145c662fd5771c6f11447f116b63300436bc9/typer-0.12.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/typer-0.12.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/click-8.0.0[${PYTHON_USEDEP}]
	>=dev-python/typing-extensions-3.7.4[${PYTHON_USEDEP}]
	>=dev-python/shellingham-1.3.0[${PYTHON_USEDEP}]
	>=dev-python/rich-10.11.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
