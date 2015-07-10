#!/bin/sh
# --
# bash-completion.sh - bash completion for otrs.Console.pl
# Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
# --
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU AFFERO General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
# or see http://www.gnu.org/licenses/agpl.txt.
# --

OTRS_CONSOLE_PATH=$(cd $(dirname $BASH_SOURCE); pwd);
# Remove : from wordbreak delimiter because OTRS uses it in the command names
COMP_WORDBREAKS=${COMP_WORDBREAKS//:/}
# Configure bash completion
complete -C "$OTRS_CONSOLE_PATH/otrs.Console.pl" $OTRS_CONSOLE_PATH/otrs.Console.pl
