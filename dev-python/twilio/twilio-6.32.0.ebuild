# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="Twilio API client and TwiML generator"
HOMEPAGE="https://github.com/twilio/twilio-python/"
SRC_URI="https://files.pythonhosted.org/packages/ae/14/a6d03cc22f6a4a9d4c681f64e7ce374a74186afc51fccc7569005cf52e40/twilio-6.32.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/twilio-6.32.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}

"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
