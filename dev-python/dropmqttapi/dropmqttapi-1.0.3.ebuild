# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="MQTT API for DROP water management products"
HOMEPAGE="https://pypi.org/project/dropmqttapi/"
SRC_URI="https://files.pythonhosted.org/packages/bc/53/70b507bf7da06fd38d699c7a32efbb62bbe6f32e050c549e0a6584fccf28/dropmqttapi-1.0.3.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/dropmqttapi-1.0.3"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
