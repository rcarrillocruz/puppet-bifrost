# Copyright 2015 Hewlett-Packard Development Company, L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
# License for the specific language governing permissions and limitations
# under the License.

# == Class: bifrost
#
class bifrost (
  $git_source_repo = 'https://git.openstack.org/openstack/bifrost',
  $revision = master,
) {

  vcsrepo { '/opt/bifrost':
    ensure   => latest,
    provider => git,
    revision => $revision,
    source   => $git_source_repo,
  }
}

