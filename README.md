# Meteor cookbook

> Install the Meteor JavaScript App Platform

[![Build Status](http://ci.ldk.io/logankoester/chef-meteor/badge)](http://ci.ldk.io/logankoester/chef-meteor/)
[![Gittip](http://img.shields.io/gittip/logankoester.png)](https://www.gittip.com/logankoester/)

See [Meteor](https://www.meteor.com/).

## Installation

Using [Berkshelf](http://berkshelf.com/), add the `meteor` cookbook to your Berksfile.

```ruby
cookbook 'meteor', github: 'logankoester/chef-meteor', branch: 'master'
```

Then run `berks` to install it.

## Usage

Add `recipe[meteor]` to your run list.

## Attributes

Refer to `attributes/default.rb` for details.

## Running the tests

This cookbook uses the [Foodcritic](http://www.foodcritic.io/) linter, [ChefSpec](http://sethvargo.github.io/chefspec/) for unit testing, and [ServerSpec](http://serverspec.org/) for integration testing via [Test Kitchen](http://kitchen.ci/) with the [kitchen-docker](https://github.com/portertech/kitchen-docker) driver.

It's not as complicated as it sounds, but you will need to have Docker installed.

1. `git clone git@github.com:logankoester/chef-meteor.git`
2. `cd chef-meteor`
3. `bundle install`
4. `bundle exec rake`

This will run all of the tests once. While developing, run `bundle exec guard start` and the relevant tests will run automatically when you save a file.

## Author

Copyright (c) 2015 [Logan Koester](http://logankoester.com). Released under the MIT license. See `LICENSE` for details.
