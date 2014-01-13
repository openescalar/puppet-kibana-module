# Copyright 2014 Miguel Zuniga ( miguel-zuniga at hotmail.com )
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.#
#
# Class: kibana
#
# Deploys kibana logstash web interface
#
# Parameters:
#
# Requires:
#       None
#

class kibana (

  $version    = present,
  $enable     = true,
  $start      = true,
  $es_host    = '127.0.0.1'

) {

  case $::operatingsystem {
    'Redhat', 'CentOS':		{ require kibana::redhat::service }
    'Ubuntu':			{ require kibana::ubuntu::service }
    default:			{ require kibana::redhat::service }
  }

}