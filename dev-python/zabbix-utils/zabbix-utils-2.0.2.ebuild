# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A library with modules for working with Zabbix Zabbix API Zabbix sender Zabbix get"
HOMEPAGE="https://github.com/zabbix/python-zabbix-utils"
SRC_URI="https://files.pythonhosted.org/packages/d0/18/91f24d891dd8a5a0d4536faaa65a73384c8751e71c527ba07b2eed8ccad2/zabbix_utils-2.0.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
