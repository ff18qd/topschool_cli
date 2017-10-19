# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'topschool_cli_app/version'

Gem::Specification.new do |spec|
  spec.name          = "topschool_cli_app"
  spec.version       = TopschoolCliApp::VERSION
  spec.authors       = ["'ff18qd'"]
  spec.email         = ["'ff18qd@gmail.com'"]

  spec.summary       = %q{1. User input which field of Top 10 Engineering Schools they would like to know
  2. User will get a list of 10 Engineering Schools in that field, ie. Top Electrial Engineering Schools in US
  3. Cli will ask user if they would like to know more details of one of the top 10 Schools
  4. User gives a number like 3 then cli will list the 3rd school name and school url for their reference.}
  spec.description   = %q{ Check if the code is working.}
  spec.homepage      = "https://github.com/ff18qd/topschool_cli"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

end
