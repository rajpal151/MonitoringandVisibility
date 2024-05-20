!/bin/bash
# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Install and start the Google logging agent (google-fluentd).
#
# Usage: sudo bash install-logging-agent.sh [ --structured | 
--unstructured ]
#
# This script does the following:
#
#   1. Configures the required apt or yum repository.
#      The environment variable REPO_SUFFIX can be set to alter which
#      repository is used.  A dash (-) will be inserted prior to the 
supplied
#      suffix. Example values are 'unstable' or '20151027-1'.
#   2. Installs the logging agent.
#   3. Unless the DO_NOT_INSTALL_CATCH_ALL_CONFIG environment variable is 
set:
#      1. Installs "catch-all" configuration files.
#      2. Restarts the logging agent, to pick up the new configuration 
files.
#      3. Sends a test message to syslog which should be visible in the 
log
#         viewer.
