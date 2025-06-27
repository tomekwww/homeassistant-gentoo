# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{12..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Annotated YAML that supports secrets for Python"
HOMEPAGE="https://pypi.org/project/annotatedyaml/"
SRC_URI="https://files.pythonhosted.org/packages/0b/b6/e24fb814108d0a708cc8b26d67e61d5fee0735373dcaa8cd61cb140caf02/annotatedyaml-0.4.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/annotatedyaml-0.4.5"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>dev-python/propcache-0.1.0[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-6.0.1[${PYTHON_USEDEP}]
	>dev-python/voluptuous-0.15.0[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
