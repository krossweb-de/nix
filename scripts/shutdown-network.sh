#!/usr/bin/env bash

ssh root@gitlab "bash /home/tyr/bin/shutdown.sh"
sleep 5
ssh root@stone "shutdown -h now"
