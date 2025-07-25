# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=True
inherit distutils-r1 pypi

DESCRIPTION="SensorPush Public API"
HOMEPAGE="https://github.com/sstallion/sensorpush-api"
SRC_URI="https://files.pythonhosted.org/packages/04/72/53594df5201cd56df628267eb88d9f89fb40eb9a5db84621fd3973d20f12/sensorpush_api-2.1.2.tar.gz -> ${P}.gh.tar.gz"
S="${WORKDIR}/sensorpush_api-2.1.2"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/python-dateutil-2.5.3[${PYTHON_USEDEP}]
	<dev-python/urllib3-2.1.0[${PYTHON_USEDEP}]
	>=dev-python/urllib3-1.25.3[${PYTHON_USEDEP}]
	>=dev-python/pydantic-1.10.5[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.0.0[${PYTHON_USEDEP}]
"


src_prepare() {
	touch requirements.txt
	touch test-requirements.txt
	touch release-requirements.txt
	echo -e "{\n  \"projectName\": \"${PN}\",\n  \"packageVersion\": \"${PV}\"\n}" >> options.json
	sed -i '3i\build-backend = "setuptools.build_meta"\n' pyproject.toml || die
	distutils-r1_src_prepare
}

src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/test" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/test"
    fi
    distutils-r1_src_install
}
