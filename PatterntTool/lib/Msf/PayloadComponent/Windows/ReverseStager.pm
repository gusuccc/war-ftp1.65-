
###############
##
#
#    Name: ReverseStager.pm
# Version: $Revision: 1677 $
# License:
#
#      This file is part of the Metasploit Exploit Framework
#      and is subject to the same licenses and copyrights as
#      the rest of this package.
#
# Descrip:
#
#      Architecture independent reverse stager base class for Windows.
#
##
###############

package Msf::PayloadComponent::Windows::ReverseStager;

use strict;
use base 'Msf::PayloadComponent::Windows::Payload';
use vars qw{@ISA};

#
# Dynamically inherit Payload from ReverseConnection
#
sub _Load
{
	Msf::PayloadComponent::Windows::Payload->_Import('Msf::PayloadComponent::ReverseConnection');

	__PACKAGE__->SUPER::_Load();
}

1;
