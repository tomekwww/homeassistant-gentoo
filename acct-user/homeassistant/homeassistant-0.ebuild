# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="Homeassistant program user"
ACCT_USER_ID=705
ACCT_USER_GROUPS=( "${PN}" dialout usb )
ACCT_USER_HOME="/var/lib/${PN}"
ACCT_USER_HOME_PERMS=0700
ACCT_USER_SHELL=/bin/sh
acct-user_add_deps
SLOT="0"