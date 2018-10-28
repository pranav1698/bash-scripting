#!/bin/bash
SERVER_NAME=$(hostname)
MY_SHELL="Script"

HOST="google.com"

ping -c 1 $HOST || echo "$HOST is reachable"