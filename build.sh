#!/bin/bash

\curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.7
rvm use 2.3.7
bundle install

