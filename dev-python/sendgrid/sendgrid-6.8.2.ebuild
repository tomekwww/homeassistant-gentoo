# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Twilio SendGrid library for Python"
HOMEPAGE="https://github.com/sendgrid/sendgrid-python/"
SRC_URI="https://files.pythonhosted.org/packages/95/c4/fc38f4a2b7edfbacc3ffe861c24ea9745e3f24ca768d4692f7b5fbe4675b/sendgrid-6.8.2.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-http-client-3.2.1[${PYTHON_USEDEP}]
	>=dev-python/starkbank-ecdsa-1.0.0[${PYTHON_USEDEP}]
"
