# Encoding: utf-8
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'packer/version'

Gem::Specification.new do |spec|
  spec.name          = 'packer-config'
  spec.version       = Packer::VERSION
  spec.authors       = ["Ian Chesal", "Fraser Cobb", "Greg Poirier", "Matasano Security", "Greg Diamond", "Enzo Rivello", "Edwin Biemond", "Andrei Shiniti Nakagawa", "Kevin Formsma", "sabishiii"]
  spec.email         = %w(ian.chesal@gmail.com)
  spec.summary       = 'An object model to build packer.io configurations in Ruby.'
  spec.description   = <<-END
Building the Packer JSON configurations in raw JSON can be quite an adventure.
There's limited facilities for variable expansion and absolutely no support for
nice things like comments. I decided it would just be easier to have an object
model to build the Packer configurations in that would easily write to the
correct JSON format. It also saved me having to remember the esoteric Packer
syntax for referencing variables and whatnot in the JSON.
END
  spec.homepage      = 'https://github.com/ianchesal/packer-config'
  spec.license       = 'Apache-2.0'
  spec.required_ruby_version = '>= 2.4.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)
end
