lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruby/lsp/rubyfmt/version"

Gem::Specification.new do |spec|
  spec.name          = "ruby-lsp-rubyfmt"
  spec.version       = Ruby::Lsp::Rubyfmt::VERSION
  spec.authors       = ["Joshua Scharf"]
  spec.email         = ["joshua.scharf@fullscript.com"]

  spec.summary       = "My short summery"
  spec.description   = "My description"
  spec.homepage      = "http://mygemserver.com"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "http://fullscript.com"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://fullscript.com"
    spec.metadata["changelog_uri"] = "http://fullscript.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency("language_server-protocol", "~> 3.17.0")
  # spec.add_dependency("prism", ">= 0.17.1", "< 0.18")
  spec.add_dependency("sorbet-runtime", ">= 0.5.5685")
  spec.add_dependency("ruby-lsp", ">= 0.12.0", "< 0.13.0")
end
