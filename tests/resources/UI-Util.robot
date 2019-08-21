# Copyright 2016-2017 VMware, Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License

*** Settings ***
Documentation  This resource contains any general keywords dealing with browser UI testing
Resource  ../resources/Util.robot

*** Keywords ***
Open Firefox Browser
    Log To Console  \nOpening firefox browser...
    Open Browser  about:  browser=${FIREFOX_BROWSER}  remote_url=${GRID_URL}

Wait Until Element Is Visible And Enabled
    [Arguments]  ${element}
	Wait Until Element Is Visible  ${element}
	Wait Until Element Is Enabled  ${element}

Print Values And Select One From List
    [Arguments]  ${element}  ${value}
    ${values}=  Get List Items  ${element}  values=True
    Log  ${values}
    Select From List By Value  ${element}  ${value}
