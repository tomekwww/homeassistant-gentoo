# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="ClearPass API Python Library"
HOMEPAGE="https://github.com/zemerick1/clearpasspy"
SRC_URI="https://files.pythonhosted.org/packages/77/13/907e3b19fd1962f4683c86b3d2f11820c964fe91c0aa9589da6bdbc21ab2/clearpasspy-1.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
