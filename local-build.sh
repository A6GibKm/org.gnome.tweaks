#!/usr/bin/env bash

BRANCH=stable
STATE_DIR="--state-dir=${HOME}/.cache/gnome-builder/flatpak-builder/"

flatpak-builder "${STATE_DIR}" --ccache --force-clean _build org.gnome.tweaks.json --repo=_repo "--default-branch=${BRANCH}"
flatpak build-bundle _repo org.gnome.Builder.flatpak org.gnome.tweaks "${BRANCH}"
