# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Extension to integrate your project with NotifyEvents service"
HOMEPAGE="https://github.com/notify-events/python"
SRC_URI="https://files.pythonhosted.org/packages/16/20/ace4347be54edca69b61ac3e69b7e991f4fb4b89a173ba07729614658be8/notify_events-1.0.4.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
