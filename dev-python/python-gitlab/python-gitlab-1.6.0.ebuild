# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Interact with GitLab API"
HOMEPAGE="https://github.com/python-gitlab/python-gitlab"
SRC_URI="https://files.pythonhosted.org/packages/bf/0e/ae40d6261b87a4532651e94a65659b7d401cb9eab33a2a9799945d925cc2/python-gitlab-1.6.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/python-gitlab-1.6.0"

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
