# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python RateLimiter using LeakyBucket Algorithm"
HOMEPAGE="https://github.com/vutran1710/PyrateLimiter"
SRC_URI="https://files.pythonhosted.org/packages/52/2c/d823960cc8b80501f86bd34b001a1f699aa187742919180676e2d646cb7b/pyrate_limiter-3.7.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
