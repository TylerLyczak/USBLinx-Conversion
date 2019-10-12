#!/bin/bash
while :
do
  setleds -D +caps
  sleep 10000
  setleds -D -caps
  sleep 10000
done
