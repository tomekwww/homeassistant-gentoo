# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper of libjpegturbo for decoding and encoding JPEG image"
HOMEPAGE="https://github.com/lilohuang/PyTurboJPEG"
SRC_URI="https://files.pythonhosted.org/packages/8b/ba/37c075c7cc86b89a22db4ac46c2e4f444666f9a43975a512b7cf70ced2fd/PyTurboJPEG-1.7.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/PyTurboJPEG-1.7.5"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
