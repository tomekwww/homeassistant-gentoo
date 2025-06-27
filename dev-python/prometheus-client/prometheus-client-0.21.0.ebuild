# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for the Prometheus monitoring system"
HOMEPAGE="https://github.com/prometheus/client_python"
SRC_URI="https://files.pythonhosted.org/packages/e1/54/a369868ed7a7f1ea5163030f4fc07d85d22d7a1d270560dab675188fb612/prometheus_client-0.21.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/prometheus_client-0.21.0"

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
