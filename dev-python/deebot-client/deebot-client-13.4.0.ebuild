# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	adler2@2.0.1
	aho-corasick@1.1.3
	arc-swap@1.7.1
	autocfg@1.5.0
	base64@0.22.1
	bitflags@1.3.2
	bitflags@2.9.1
	bytemuck@1.23.1
	byteorder-lite@0.1.0
	byteorder@1.5.0
	cc@1.2.27
	cfg-if@1.0.1
	crc32fast@1.4.2
	equivalent@1.0.2
	fdeflate@0.3.7
	flate2@1.1.2
	futures-core@0.3.31
	futures-macro@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	getrandom@0.3.3
	glob@0.3.2
	hashbrown@0.15.4
	heck@0.5.0
	image@0.25.6
	indexmap@2.9.0
	indoc@2.0.6
	jobserver@0.1.33
	libc@0.2.174
	liblzma-sys@0.4.4
	liblzma@0.4.2
	log@0.4.27
	memchr@2.7.5
	memoffset@0.9.1
	miniz_oxide@0.8.9
	num-traits@0.2.19
	once_cell@1.21.3
	pin-project-lite@0.2.16
	pin-utils@0.1.0
	pkg-config@0.3.32
	png@0.17.16
	portable-atomic@1.11.1
	proc-macro-crate@3.3.0
	proc-macro2@1.0.95
	pyo3-build-config@0.25.1
	pyo3-ffi@0.25.1
	pyo3-log@0.12.4
	pyo3-macros-backend@0.25.1
	pyo3-macros@0.25.1
	pyo3@0.25.1
	quote@1.0.40
	r-efi@5.3.0
	regex-automata@0.4.9
	regex-syntax@0.8.5
	regex@1.11.1
	relative-path@1.9.3
	rstest@0.25.0
	rstest_macros@0.25.0
	rustc_version@0.4.1
	semver@1.0.26
	shlex@1.3.0
	simd-adler32@0.3.7
	slab@0.4.10
	svg@0.18.0
	syn@2.0.103
	target-lexicon@0.13.2
	toml_datetime@0.6.11
	toml_edit@0.22.27
	unicode-ident@1.0.18
	unindent@0.2.4
	wasi@0.14.2+wasi-0.2.4
	winnow@0.7.11
	wit-bindgen-rt@0.39.0
	zstd-safe@7.2.4
	zstd-sys@2.0.15+zstd.1.5.7
	zstd@0.13.3
"

PYTHON_COMPAT=( python3_{13..13} )
DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=maturin
PYPI_NO_NORMALIZE=True
inherit cargo distutils-r1 pypi

DESCRIPTION="Deebot client library in python 3"
HOMEPAGE="https://pypi.org/project/deebot-client/"
SRC_URI="https://files.pythonhosted.org/packages/8c/53/225742bb7c5e82a513b3561b84de982887c902ce01dfb79cf68aba0321b9/deebot_client-13.4.0.tar.gz -> ${P}.gh.tar.gz"
SRC_URI+="
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/deebot_client-13.4.0"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	<dev-python/aiohttp-4.10.0[${PYTHON_USEDEP}]
	<dev-python/aiomqtt-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/aiomqtt-2.0.0[${PYTHON_USEDEP}]
	>=dev-python/cachetools-5.0.0[${PYTHON_USEDEP}]
	<dev-python/cachetools-7.0.0[${PYTHON_USEDEP}]
	>=dev-python/defusedxml-0.7.1[${PYTHON_USEDEP}]
"
