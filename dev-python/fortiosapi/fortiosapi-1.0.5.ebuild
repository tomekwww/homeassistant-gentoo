# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Python modules to use Fortigate APIs"
HOMEPAGE="https://github.com/fortinet-solutions-cse/fortiosapi"
SRC_URI="https://files.pythonhosted.org/packages/88/eb/3bebe6506edfcf9bc7de5638728dcab09ad3c141e976cbeb883531c6f383/fortiosapi-1.0.5.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/fortiosapi-1.0.5"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/paramiko[${PYTHON_USEDEP}]
	dev-python/oyaml[${PYTHON_USEDEP}]
"
