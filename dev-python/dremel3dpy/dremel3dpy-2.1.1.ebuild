# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Dremel 3D Printer Python Library running on Python 3"
HOMEPAGE="https://github.com/godely/dremel3dpy"
SRC_URI="https://files.pythonhosted.org/packages/71/b0/4f1b7161d2e99caef5693d2bd01b774a053271fdc19e39501412d384bd6d/dremel3dpy-2.1.1.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dremel3dpy-2.1.1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/decorator-5.0.0[${PYTHON_USEDEP}]
	>=dev-python/imageio-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/imutils-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/validators-0.0.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.0.0[${PYTHON_USEDEP}]
"
