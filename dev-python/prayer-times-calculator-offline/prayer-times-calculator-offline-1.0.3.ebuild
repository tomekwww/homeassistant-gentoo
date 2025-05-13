# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Prayer Times Calculator  Offline"
HOMEPAGE="https://pypi.org/project/prayer-times-calculator-offline/"
SRC_URI="https://files.pythonhosted.org/packages/d4/c6/88c48725e3603f8e6eb95935eca17b857a131bb7dd72b2f4d49538015cb6/prayer_times_calculator_offline-1.0.3.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
