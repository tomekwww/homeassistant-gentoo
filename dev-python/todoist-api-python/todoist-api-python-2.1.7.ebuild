# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=poetry
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Official Python SDK for the Todoist REST API"
HOMEPAGE="https://github.com/Doist/todoist-api-python"
SRC_URI="https://files.pythonhosted.org/packages/63/50/8f27064a3d9527c5bb391870c6bdccb0778a47b06d01d362aee07fbfbe49/todoist_api_python-2.1.7.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/todoist_api_python-2.1.7"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/requests-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.32.3[${PYTHON_USEDEP}]
"
