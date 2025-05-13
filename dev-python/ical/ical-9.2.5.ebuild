# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python iCalendar implementation rfc 2445"
HOMEPAGE="https://github.com/allenporter/ical"
SRC_URI="https://files.pythonhosted.org/packages/f0/84/73775435fc3645476bb1e0fba3e5f39bb2bd9791b7934b8ae70ff93a76ed/ical-9.2.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.8.2[${PYTHON_USEDEP}]
	>=dev-python/tzdata-2023.3.0[${PYTHON_USEDEP}]
	>=dev-python/pydantic-2.10.4[${PYTHON_USEDEP}]
	>=dev-python/pyparsing-3.0.9[${PYTHON_USEDEP}]
"
