#!/usr/bin/env sh
set -eu
if ! command -v gradle >/dev/null 2>&1; then
  echo 'Gradle tidak ditemukan. Buka proyek ini lewat Android Studio atau instal Gradle terlebih dahulu.' >&2
  exit 1
fi
gradle assembleDebug
printf '\nAPK: app/build/outputs/apk/debug/app-debug.apk\n'
