# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

OPAM_DEPS=auto
inherit opam jbuilder

DESCRIPTION="Pretty-printing library for OCaml"
HOMEPAGE="https://github.com/mjambon/easy-format"
SRC_URI="https://github.com/ocaml-community/easy-format/releases/download/${PV}/${P}.tbz"

SLOT="0/${PV}"
LICENSE="BSD"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

IUSE="examples"

RDEPEND=""
DEPEND="${RDEPEND}"

src_install() {
	opam_src_install
	if use examples ; then
		dodoc -r examples
		docompress -x /usr/share/doc/${PF}/examples
	fi
}