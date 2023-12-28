# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in ruby-lsp-rubyfmt.gemspec
gemspec

# sorbet-static is not available on Windows. We also skip Tapioca since it depends on sorbet-static-and-runtime
# C Ruby (MRI), Rubinius or TruffleRuby, but NOT Windows
NON_WINDOWS_PLATFORMS = [:ruby]

group :development do
  gem "bundler", "~> 2.4.2"
  gem "debug", "~> 1.8", require: false
  gem "minitest", "~> 5.20"
  gem "minitest-reporters", "~> 1.6"
  gem "rake", "~> 13.1"
  gem "rubocop", "~> 1.57"
  gem "rubocop-shopify", "~> 2.14", require: false
  gem "rubocop-minitest", "~> 0.33.0", require: false
  gem "rubocop-rake", "~> 0.6.0", require: false
  gem "rubocop-sorbet", "~> 0.7", require: false
  gem "sorbet-static-and-runtime", platforms: NON_WINDOWS_PLATFORMS
  gem "tapioca", "~> 0.11", require: false, platforms: NON_WINDOWS_PLATFORMS
end
