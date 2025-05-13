# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python highlevel interface and ctypesbased bindings for PulseAudio libpulse"
HOMEPAGE="http://github.com/mk-fg/python-pulse-control"
SRC_URI="https://files.pythonhosted.org/packages/8d/df/73af0b1a7d9f29b97c9a78ef871767bfb02e90b6fde673b0228495fab214/pulsectl-23.5.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
