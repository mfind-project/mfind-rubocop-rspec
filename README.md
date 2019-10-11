# mfind-rubocop-rspec

[![Gem Version][gem-version-img]][gem-version]
[![Build Status][build-status-img]][build-status]

RuboCop rules for mfind projects that use RSpec. Includes:

- [`rubocop`][rubocop]
- [`rubocop-performance`][rubocop-performance]
- [`rubocop-rspec`][rubocop-rspec]

If you create Ruby on Rails project, **use gem [`mfind-rubocop-rspec-rails`][mfind-rubocop-rspec-rails] instead.**

## Installation

Add this line to your application's Gemfile:

```ruby
group :test, :development do
  gem 'mfind-rubocop-rspec'
end
```

Do notice, that you do not need to include other `rubocop-*` gems in your
Gemfile, this single one will suffice.

For a Ruby library, add this to your gemspec:

```ruby
spec.add_development_dependency 'mfind-rubocop-rspec'
```

And then run:

```bash
$ bundle install
```

## Usage

Create a `.rubocop.yml` with the following directives:

```yaml
inherit_gem:
  mfind-rubocop-rspec:
    - default.yml
```

Now, run:

```bash
$ bundle exec rubocop
```

## Configuration

All configuration goes to [default.yml][config] file.

- [`rubocop` defaults][rubocop-defaults] & [Ruby styleguide][ruby-styleguide]
- [`rubocop-rspec` defaults][rubocop-rspec-defaults] & [RSpec styleguide][rspec-styleguide]
- [`rubocop-performance` defaults][rubocop-performance-defaults]

## Publish to Rubygems

In order to publish new version of the gem follow the steps:

1. `git hf release start X.Y.Z`
2. bump up version in [`MfindRuboCopRSpec::VERSION`][gem-version-path]
3. `git commit -am 'UPD version to X.Y.Z'`
4. `git hf release finish X.Y.Z`
5. `bundle update mfind-rubocop-rspec` in projects that use it
6. update `mfind-rubocop-rails` gem in [`mfind-rubocop-rspec-rails`][mfind-rubocop-rspec-rails] gem

The `gem push` script is set up on CircleCI upon `git hf release finish`, as per
[Publishing RubyGems using Circle CI 2.0 article][publishing-rubygems-using-circleci].

[rubocop]: https://github.com/rubocop-hq/rubocop
[rubocop-performance]: https://github.com/rubocop-hq/rubocop-performance
[rubocop-rspec]: https://github.com/rubocop-hq/rubocop-rspec
[mfind-rubocop-rspec-rails]: https://github.com/mfind-project/mfind-rubocop-rspec-rails
[publishing-rubygems-using-circleci]: https://medium.com/@pezholio/publishing-rubygems-using-circle-ci-2-0-1dbf06ae9942
[gem-version-path]: https://github.com/mfind-project/mfind-rubocop-rspec/blob/master/lib/mfind_rubocop_rspec.rb#L4
[config]: https://github.com/mfind-project/mfind-rubocop-rspec/blob/master/default.yml
[rubocop-defaults]: https://github.com/rubocop-hq/rubocop/blob/master/config/default.yml
[ruby-styleguide]: https://rubystyle.guide/
[rubocop-rspec-defaults]: https://github.com/rubocop-hq/rubocop-rspec/blob/master/config/default.yml
[rspec-styleguide]: https://rspec.rubystyle.guide/
[rubocop-performance-defaults]: https://github.com/rubocop-hq/rubocop-performance/blob/master/config/default.yml
[gem-version]: https://rubygems.org/gems/mfind-rubocop-rspec
[build-status]: https://circleci.com/gh/mfind-project/mfind-rubocop-rspec/tree/master
[gem-version-img]: https://badge.fury.io/rb/mfind-rubocop-rspec.svg
[build-status-img]: https://circleci.com/gh/mfind-project/mfind-rubocop-rspec/tree/master.svg?style=shield
