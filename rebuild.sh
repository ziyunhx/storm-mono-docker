#!/bin/bash

docker build -t="ziyunhx/storm" storm
docker build -t="ziyunhx/storm-nimbus" storm-nimbus
docker build -t="ziyunhx/storm-supervisor" storm-supervisor
docker build -t="ziyunhx/storm-ui" storm-ui