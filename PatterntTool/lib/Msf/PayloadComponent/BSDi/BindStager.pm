###############
##
#
#    Name: BindStager.pm
# Version: $Revision: 1609 $
# License:
#
#      This file is part of the Metasploit Exploit Framework
#      and is subject to the same licenses and copyrights as
#      the rest of this package.
#
# Descrip:
#
#      Architecture independent bind stager base class for BSDi.
#
##
###############

package Msf::PayloadComponent::BSDi::BindStager;

use strict;
use base 'Msf::PayloadComponent::BSDi::Payload';
use vars qw{@ISA};

#
# Dynamically inherit Payload from BindConnection
#
sub _Load
{
	Msf::PayloadComponent::BSDi::Payload->_Import('Msf::PayloadComponent::BindConnection');

	__PACKAGE__->SUPER::_Load();
}

1;
