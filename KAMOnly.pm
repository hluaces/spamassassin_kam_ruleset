package Mail::SpamAssassin::Plugin::KAMOnly;
my $VERSION = 1.0;

### About:
#
# This plugin is a dummy file that simply let's me use conditions on rules
# that will only be useful for me.  Do not use it without instructions.
#
# Author: Kevin A. McGrail
# Copyright 2011 Kevin A. McGrail
#
# <@LICENSE>
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to you under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at:
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# </@LICENSE>
#

use strict;
use Mail::SpamAssassin::Plugin;

use vars qw(@ISA);
@ISA = qw(Mail::SpamAssassin::Plugin);

sub dbg { Mail::SpamAssassin::Plugin::dbg ("KAMOnly: @_"); }

sub new {
  my ($class, $mailsa) = @_;

  # the usual perlobj boilerplate to create a subclass object
  $class = ref($class) || $class;
  my $self = $class->SUPER::new($mailsa);
  bless ($self, $class);

  $self->{KAMOnly_available} = 1;

  dbg("KAMOnly Rules plugin enabled");

  # and return the new plugin object
  return $self;
}

1;
