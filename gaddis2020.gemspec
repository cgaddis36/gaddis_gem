require_relative 'lib/gaddis2020/version'

Gem::Specification.new do |spec|
  spec.name          = "gaddis2020"
  spec.version       = Gaddis2020::VERSION
  spec.authors       = ["Chase.Gaddis"]
  spec.email         = ["cgaddis36@gmail.com"]

  spec.summary       = %q{Go fishing here!}
  spec.description   = %q{Best fishing spots ever!}
  spec.homepage      = "https://github.com/cgaddis36/gaddis2020"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cgaddis36/gaddis2020"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
