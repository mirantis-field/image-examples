#!/bin/bash
echo "Starting ENTRYPOINT script ${0}"
echo ""

set -e

# Set environment variables that require variable expansion
export MY_VARIABLES=${ENV_VARIABLE1},${ENV_VARIABLE1}

env

echo ""
echo "ENTRYPOINT is now going to execute COMMAND":
echo $@

exec "$@"
