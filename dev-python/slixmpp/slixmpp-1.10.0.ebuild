# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	autocfg@1.4.0
	cfg-if@1.0.0
	displaydoc@0.2.5
	heck@0.5.0
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.1
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.1
	icu_properties@1.5.1
	icu_properties_data@1.5.1
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idna@1.0.3
	idna_adapter@1.2.0
	indoc@2.0.6
	jid@0.12.0
	libc@0.2.171
	litemap@0.7.5
	memchr@2.7.4
	memoffset@0.9.1
	once_cell@1.21.1
	portable-atomic@1.11.0
	proc-macro2@1.0.94
	pyo3-build-config@0.23.5
	pyo3-ffi@0.23.5
	pyo3-macros-backend@0.23.5
	pyo3-macros@0.23.5
	pyo3@0.23.5
	quote@1.0.40
	serde@1.0.219
	serde_derive@1.0.219
	smallvec@1.14.0
	stable_deref_trait@1.2.0
	stringprep@0.1.5
	syn@2.0.100
	synstructure@0.13.1
	target-lexicon@0.12.16
	tinystr@0.7.6
	tinyvec@1.9.0
	tinyvec_macros@0.1.1
	unicode-bidi@0.3.18
	unicode-ident@1.0.18
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unindent@0.2.4
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	write16@1.0.0
	writeable@0.5.5
	yoke-derive@0.7.5
	yoke@0.7.5
	zerofrom-derive@0.1.6
	zerofrom@0.1.6
	zerovec-derive@0.10.3
	zerovec@0.10.4
"

PYTHON_COMPAT=( python3_{10..13} )
DISTUTILS_USE_PEP517=maturin
PYPI_NO_NORMALIZE=True
inherit cargo distutils-r1 pypi

DESCRIPTION="Slixmpp is an elegant Python library for XMPP aka Jabber"
HOMEPAGE="https://pypi.org/project/slixmpp/"

SRC_URI="https://files.pythonhosted.org/packages/c6/79/0ceacbcdc5f84248a36c98e11c126494c4c262902bba69eb9bd536771f76/slixmpp-1.10.0.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}"
S="${WORKDIR}/slixmpp-1.10.0"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 arm arm64 x86"
IUSE=""

RESTRICT="test strip"

RDEPEND="${PYTHON_DEPS}
	>=dev-python/aiodns-3.2.0[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-0.6.1[${PYTHON_USEDEP}]
	>=dev-python/pyasn1-modules-0.4.1[${PYTHON_USEDEP}]
"


src_install() {
    # Remove all 'tests' directories from the installation image
    if [[ -d "${_DISTUTILS_PREVIOUS_SITE}/tests" ]] ; then
        rm -r "${_DISTUTILS_PREVIOUS_SITE}/tests"
    fi
    distutils-r1_src_install
}
