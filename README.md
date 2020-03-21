# Mixture

[![CircleCI](https://circleci.com/gh/FrameBassman/mixture/tree/master.svg?style=shield)](https://circleci.com/gh/FrameBassman/mixture/tree/master)
[![codecov](https://codecov.io/gh/FrameBassman/mixture/branch/master/graph/badge.svg)](https://codecov.io/gh/FrameBassman/mixture)

Mixture - is a yet another cli for Jira issue tracker

## Prerequisites
- Erlang/OTP 22 (TODO, not yet tested on previous versions)
- Elixir v1.10.*  (TODO, not yet tested on previous versions)
- Linux OS (TODO, not yet tested on OS X and Windows)

## Setup
- `make setup`
- fill opened set-env.sh with your parameters (# you can get your jira token here https://id.atlassian.com/manage/api-tokens)

## Usage
- `source set-env.sh`
- `iex -S mix`
- `Mixture.get_worklog(<task_number, e.g. "TASK-152">)`
