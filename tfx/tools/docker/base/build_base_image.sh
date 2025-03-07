#!/bin/bash
# Copyright 2020 Google LLC. All Rights Reserved.
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

# Convenience script to build the base image used in TFX containers.

set -u -x

DOCKER_BASE_IMAGE_REPO=${DOCKER_BASE_IMAGE_REPO:-"gcr.io/tfx-oss-public/tfx_base"}
DOCKER_BASE_IMAGE_TAG=${DOCKER_BASE_IMAGE_TAG:-"py38-20230203"}
DOCKER_FILE=${DOCKER_FILE:-"Dockerfile"}

# Run docker build command.
docker build -t ${DOCKER_BASE_IMAGE_REPO}:${DOCKER_BASE_IMAGE_TAG} -f tfx/tools/docker/base/${DOCKER_FILE} .
