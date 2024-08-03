#!/bin/bash

set -e

export LIVEKIT_URL=http://localhost:7880
export LIVEKIT_API_KEY=devkey
export LIVEKIT_API_SECRET=secret

lk egress stop --id $1