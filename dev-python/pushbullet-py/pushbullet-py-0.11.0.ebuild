# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="A simple python client for pushbulletcom"
HOMEPAGE="https://github.com/randomchars/pushbullet.py"
SRC_URI="https://files.pythonhosted.org/packages/e7/cf/189c94d02f7c094a4d943004f7a08d854ca7624e1017d4f1c212e7fbdabd/pushbullet.py-0.11.0.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/pushbullet.py-0.11.0"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/requests-1.0.0[${PYTHON_USEDEP}]
	dev-python/python-magic[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
