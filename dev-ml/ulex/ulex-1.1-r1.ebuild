# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit eutils findlib

DESCRIPTION="A lexer generator for unicode"
HOMEPAGE="http://www.cduce.org"
SRC_URI="http://www.cduce.org/download/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="+ocamlopt"

RDEPEND=">=dev-lang/ocaml-3.10.2:=[ocamlopt?]
	dev-ml/camlp4:="
DEPEND="${RDEPEND}
	dev-ml/ocamlbuild"

src_prepare() {
	has_version '>=dev-lang/ocaml-4.06_beta' && epatch "${FILESDIR}/ocaml406.patch"
}

src_compile() {
	emake all
	if use ocamlopt; then
		emake all.opt
	fi
}

src_install() {
	findlib_src_install
	dodoc README CHANGES
}
