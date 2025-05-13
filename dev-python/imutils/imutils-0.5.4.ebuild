# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A series of convenience functions to make basic image processing functions such as translation rotation resizing skeletonization displaying Matplotlib images sorting contours detecting edges and much more easier with OpenCV and both Python 27 and Python 3"
HOMEPAGE="https://github.com/jrosebr1/imutils"
SRC_URI="https://files.pythonhosted.org/packages/3f/d3/ecb4d108f6c1041d24842a345ee0123cd7f366ba75cf122601e856d42ba2/imutils-0.5.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
