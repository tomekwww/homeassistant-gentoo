# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="LCN panel for Home Assistant"
HOMEPAGE="https://pypi.org/project/lcn-frontend/"
SRC_URI="https://files.pythonhosted.org/packages/12/19/bf28521e6a86a96ad84535fd2a246c89741234bbf1073ad5d25c75e60c73/lcn_frontend-0.2.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/lcn_frontend-0.2.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
