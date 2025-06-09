# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Render rich text tables progress bars syntax highlighting markdown and more to the terminal"
HOMEPAGE="https://github.com/willmcgugan/rich"
SRC_URI="https://files.pythonhosted.org/packages/74/c3/e55ebdd66540503cee29cd3bb18a90bcfd5587a0cf3680173c368be56093/rich-10.16.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/rich-10.16.2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/pygments-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.6.0[${PYTHON_USEDEP}]
	<dev-python/commonmark-0.10.0[${PYTHON_USEDEP}]
	>=dev-python/commonmark-0.9.0[${PYTHON_USEDEP}]
	<dev-python/colorama-0.5.0[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.4.0[${PYTHON_USEDEP}]
"
