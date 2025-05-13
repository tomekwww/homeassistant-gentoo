# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python client for Sentry httpssentryio"
HOMEPAGE="https://github.com/getsentry/sentry-python"
SRC_URI="https://files.pythonhosted.org/packages/c8/28/02c0cd9184f9108e3c52519f9628b215077a3854240e0b17ae845e664855/sentry_sdk-1.45.1.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.26.11[${PYTHON_USEDEP}]
"
