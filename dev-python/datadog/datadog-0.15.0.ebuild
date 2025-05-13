# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The Datadog Python library"
HOMEPAGE="http://www.datadoghq.com"
SRC_URI="https://files.pythonhosted.org/packages/ea/c6/e7ae504b347ea5b89d5e7136adde6c811496f741e0c0b326eccbe278f8d3/datadog-0.15.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
