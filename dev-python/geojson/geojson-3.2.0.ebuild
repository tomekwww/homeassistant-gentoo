# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python bindings and utilities for GeoJSON"
HOMEPAGE="https://github.com/jazzband/geojson"
SRC_URI="https://files.pythonhosted.org/packages/85/5a/33e761df75c732fcea94aaf01f993d823138581d10c91133da58bc231e63/geojson-3.2.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/geojson-3.2.0"

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
