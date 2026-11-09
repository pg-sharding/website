#!/bin/sh
# Bootstrap for the SPQR installer.
#
# The real installer lives in the SPQR repository:
#   https://github.com/pg-sharding/spqr/blob/master/install.sh
# This file only downloads and runs it, so it never needs updating.
#
# Usage:
#   curl -fsSL https://pg-sharding.tech/install.sh | sh
#   curl -fsSL https://pg-sharding.tech/install.sh | VERSION=3.2.0 sh
#   curl -fsSL https://pg-sharding.tech/install.sh | INSTALL_DIR=./mydir sh
set -eu

INSTALLER_URL="https://raw.githubusercontent.com/pg-sharding/spqr/master/install.sh"

command -v curl >/dev/null 2>&1 || {
    printf '[spqr] ERROR: required command not found: curl\n' >&2
    exit 1
}

installer=$(curl -fsSL "${INSTALLER_URL}") || {
    printf '[spqr] ERROR: failed to download installer from %s\n' "${INSTALLER_URL}" >&2
    exit 1
}

exec sh -c "${installer}"
