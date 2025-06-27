# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="MinIO Python SDK for Amazon S3 Compatible Cloud Storage"
HOMEPAGE="https://github.com/minio/minio-py"
SRC_URI="https://files.pythonhosted.org/packages/71/b4/beb7d96c7e3526f34c31c75f29176fc780f822d41801bcb5a4a67c3d6061/minio-7.1.12.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/minio-7.1.12"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	dev-python/certifi[${PYTHON_USEDEP}]
	dev-python/urllib3[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
