#!/bin/sh 
export HUBOT_HIPCHAT_JID=$(curl consul:8500/v1/kv/hubot/HUBOT_HIPCHAT_JID\?raw)
export HUBOT_HIPCHAT_PASSWORD=$(curl consul:8500/v1/kv/hubot/HUBOT_HIPCHAT_PASSWORD\?raw)
export HUBOT_LOG_LEVEL=$(curl consul:8500/v1/kv/hubot/HUBOT_LOG_LEVEL\?raw)

exec /opt/hubot/bin/hubot -a hipchat
