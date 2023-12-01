$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "ruby_lsp/internal"
require "ruby_lsp/ruby-lsp-rubyfmt/addon"

require "minitest/autorun"
require "minitest/reporters"

minitest_reporter = if ENV["SPEC_REPORTER"]
  Minitest::Reporters::SpecReporter.new(color: true)
else
  Minitest::Reporters::DefaultReporter.new(color: true)
end
Minitest::Reporters.use!(minitest_reporter)
