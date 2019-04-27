#!/bin/bash
QUEUE=* bundle exec rake resque:work &
bundle exec thin start
