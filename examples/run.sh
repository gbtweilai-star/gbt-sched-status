#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_sched_status info
PYTHONPATH=src python -m gbt_sched_status check --payload '{}'
PYTHONPATH=src python -m gbt_sched_status run   --payload '{}'
