#!/bin/bash

set -e
cd "$(dirname "$0")/.."

dart run build_runner build --delete-conflicting-outputs
dart format --fix -l 80 .
