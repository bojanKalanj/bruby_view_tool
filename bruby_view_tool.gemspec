
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bruby_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "bruby_view_tool"
  spec.version       = BrubyViewTool::VERSION
  spec.authors       = ["bojanKalanj"]
  spec.email         = ["bojan.kalanj@gmail.com"]

  spec.summary       = %q{View Specific methods for applications I personaly use}
  spec.description   = %q{Provides generated HTML for Rails app}
  spec.homepage      = "https://github.com/bojanKalanj/bruby_view_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
