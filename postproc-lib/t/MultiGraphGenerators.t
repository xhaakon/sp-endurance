# This file is part of sp-endurance.
#
# vim: ts=4:sw=4:et
#
# Copyright (C) 2012 by Nokia Corporation
#
# Contact: Eero Tamminen <eero.tamminen@nokia.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# version 2 as published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
# 02110-1301 USA

use Test::More;

BEGIN {
    use_ok('SP::Endurance::MultiGraphGenerators',
        qw/system_graph_generators process_graph_generators get_plots/);
}

ok(!defined $SP::Endurance::MultiGraphGenerators::done_plotting_cb,
    'not defined $SP::Endurance::MultiGraphGenerators::done_plotting_cb');

ok(scalar system_graph_generators() > 0,
    'system graph generators must have been registered');

ok(scalar process_graph_generators() > 0,
    'process graph generators must have been registered');

my @plots = get_plots;
is_deeply(\@plots, [], 'get_plots()');

done_testing;
# vim: ts=4:sw=4:et
