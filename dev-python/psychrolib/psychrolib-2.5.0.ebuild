# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Library of psychrometric functions to calculate thermodynamic properties of air"
HOMEPAGE="https://github.com/psychrometrics/psychrolib"
SRC_URI="https://files.pythonhosted.org/packages/db/d2/f32c2db16c3a5a76a75897f854dbb28228f43a192f0b398f31f7b774e9b9/PsychroLib-2.5.0.zip -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
