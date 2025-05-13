# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="PyTado from chrism0dwk modfied by wmalgadey diplix michaelarnauts LenhartStephan splifter syssi andersonshatch Yippy p0thi Coffee2CodeNL chiefdragon FilBr nikilase albertomontesg MoritzSchmidt palazzem"
HOMEPAGE="https://pypi.org/project/python-tado/"
SRC_URI="https://files.pythonhosted.org/packages/08/13/a960b0818e0bcf7cc433d7b64d834a716781ebb5274ce13f15d4988c546b/python_tado-0.18.15.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
