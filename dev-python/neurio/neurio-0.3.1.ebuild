# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Neurio energy sensor and appliance automation API library"
HOMEPAGE="https://github.com/jordanh/neurio-python"
SRC_URI="https://files.pythonhosted.org/packages/fd/9a/5b6bb315929b93d2a9f32ae5e36968a4eb326cb2d95831f0137da27d3555/neurio-0.3.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
