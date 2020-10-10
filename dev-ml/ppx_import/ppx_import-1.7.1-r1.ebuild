# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit jbuilder

DESCRIPTION="A syntax extension for importing declarations from interface files"
HOMEPAGE="https://github.com/ocaml-ppx/ppx_import"
SRC_URI="https://github.com/ocaml-ppx/ppx_import/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}oc408"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"
DEPEND="${DEPEND}
	test? ( dev-ml/ounit2 dev-ml/ppx_deriving )
"
PATCHES=(
	"${FILESDIR}/ounit2.patch"
)