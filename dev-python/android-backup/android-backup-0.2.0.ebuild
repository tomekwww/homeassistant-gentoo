# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Unpack and repack android backups"
HOMEPAGE="https://github.com/bluec0re/android-backup-tools"
SRC_URI="https://files.pythonhosted.org/packages/01/bb/adfb293e9b74528b7cf4b5402fb1ee5507ae2bc4fe339b47e75c48dd5587/android_backup-0.2.0.tar.gz -> ${P}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"
