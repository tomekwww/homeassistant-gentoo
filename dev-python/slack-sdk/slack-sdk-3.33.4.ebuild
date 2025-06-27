# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="The Slack API Platform SDK for Python"
HOMEPAGE="https://github.com/slackapi/python-slack-sdk"
SRC_URI="https://files.pythonhosted.org/packages/e6/ee/f1bd8fde0097d74ddc08d186726da17a1f041021ed6f422a8ac94ffc8e84/slack_sdk-3.33.4.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/slack_sdk-3.33.4"

LICENSE="MIT"
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
