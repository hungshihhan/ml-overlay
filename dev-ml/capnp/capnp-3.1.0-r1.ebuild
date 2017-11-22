# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit jbuilder

DESCRIPTION="OCaml code generator plugin for the Cap'n Proto serialization framework"
HOMEPAGE="https://github.com/pelzlpj/capnp-ocaml"
SRC_URI="https://github.com/pelzlpj/capnp-ocaml/archive/v${PV}.tar.gz -> ocaml-${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND="
	dev-ml/core_kernel:=
	dev-ml/ocaml-extunix:=
	dev-ml/ocplib-endian:=
	dev-ml/res:=
	dev-ml/ocaml-uint:=
	dev-libs/capnproto:=
	|| ( dev-ml/num:= <dev-lang/ocaml-4.06_alpha )
"
DEPEND="${RDEPEND}
	test? ( dev-ml/core dev-ml/ounit )
"

S="${WORKDIR}/${PN}-ocaml-${PV}"
