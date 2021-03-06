# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit jbuilder

MY_P=${PN}-v${PV}
DESCRIPTION="Public Key Infrastructure purely in OCaml"
HOMEPAGE="https://github.com/mirleft/ocaml-x509"
SRC_URI="https://github.com/mirleft/ocaml-x509/releases/download/v${PV}/${MY_P}.tbz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
S="${WORKDIR}/${MY_P}"
