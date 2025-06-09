# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="MQTT API for Qbus Home Automation"
HOMEPAGE="https://github.com/Qbus-iot/qbusmqttapi"
SRC_URI="https://files.pythonhosted.org/packages/a0/0b/ecd266d4db4bc7062ec046755e7f2c5d70c1be36bff2d5f40296f9b22348/qbusmqttapi-1.3.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/qbusmqttapi-1.3.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
