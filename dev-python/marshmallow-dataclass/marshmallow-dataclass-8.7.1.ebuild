# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python library to convert dataclasses into marshmallow schemas"
HOMEPAGE="https://github.com/lovasoa/marshmallow_dataclass"
SRC_URI="https://files.pythonhosted.org/packages/01/23/a863a5d569f03454d733f884a72415ac3f1e1b1b3215de3a9f4f621a83a6/marshmallow_dataclass-8.7.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/marshmallow_dataclass-8.7.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/marshmallow-3.18.0[${PYTHON_USEDEP}]
	>=dev-python/typing-inspect-0.9.0[${PYTHON_USEDEP}]
	<dev-python/typeguard-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/typeguard-4.0.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
