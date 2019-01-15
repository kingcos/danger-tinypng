# danger-tinypng

[![Build Status](https://travis-ci.org/kingcos/danger-tinypng.svg?branch=master)](https://travis-ci.org/kingcos/danger-tinypng)

**danger-tinypng** is a plugin for [Danger](https://danger.systems/swift) to compress your PNG/JPEG images by using TinyPNG API.

## Installation

    $ gem install danger-tinypng

## Usage

    Methods and attributes from this plugin are available in
    your `Dangerfile` under the `tinypng` namespace.

## Development

1. Clone this repo
2. Run `bundle install` to setup dependencies.
3. Run `bundle exec rake spec` to run the tests.
4. Use `bundle exec guard` to automatically have tests run as you make changes.
5. Make your changes.

---

> ***Do you want to check your text during CI? Please check my another Danger plugin called [danger-text_checker](https://github.com/kingcos/danger-text_checker).***
