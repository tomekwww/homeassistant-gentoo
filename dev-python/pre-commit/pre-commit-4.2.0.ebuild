# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A framework for managing and maintaining multilanguage precommit hooks"
HOMEPAGE="https://github.com/pre-commit/pre-commit"
SRC_URI="https://files.pythonhosted.org/packages/08/39/679ca9b26c7bb2999ff122d50faa301e49af82ca9c066ec061cfbc0c6784/pre_commit-4.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pre_commit-4.2.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/cfgv-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/identify-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/nodeenv-0.11.1[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.1.0[${PYTHON_USEDEP}]
	>=dev-python/virtualenv-20.10.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
