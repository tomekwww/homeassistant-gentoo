# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Notifications for AndroidFire TVs"
HOMEPAGE="https://github.com/engrbm87/notifications_android_tv"
SRC_URI="https://files.pythonhosted.org/packages/72/ae/376f65f28d8af46974b3c9c9d9f51458f66837ba06ef4ce168bc1afbe494/notifications_android_tv-0.1.5.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
"
