#!/bin/bash

# This is not an official Google project.

#This script is for educational purposes only, is not certified and is not recommended for production environments.

## Copyright 2021 Google LLC
#Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

#  http://www.apache.org/licenses/LICENSE-2.0
#Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.


set_shared_vpc() {

    HOST_PROJECT_ID=$1
    SERVICE_PROJECT_ID=$2
    #https://cloud.google.com/vpc/docs/provisioning-shared-vpc#gcloud
    
    gcloud compute shared-vpc enable $HOST_PROJECT_ID;
    gcloud compute shared-vpc associated-projects add $SERVICE_PROJECT_ID \
        --host-project $HOST_PROJECT_ID;

}