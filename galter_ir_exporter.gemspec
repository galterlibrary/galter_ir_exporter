lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "galter_ir_exporter/version"

Gem::Specification.new do |spec|
  spec.name          = "galter_ir_exporter"
  spec.version       = GalterIrExporter::VERSION
  spec.authors       = ["Austin Sharp", "Eric Newman"]
  spec.email         = ["galter-is@listserv.it.northwestern.edu"]

  spec.summary       = %q{Data exporter for Sufia6}
  spec.description   = %q{Exports data from GenericFile and Collection to json output}
  spec.homepage      = "https://github.com/galterlibrary/galter_ir_exporter"
  spec.license       = "Apache-2.0" #Apache License, Version 2.0

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/galterlibrary/galter_ir_exporter"
    # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
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

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "activerecord", ["= 4.2.7"]
end
