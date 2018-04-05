# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "instaman/version"

Gem::Specification.new do |spec|
  spec.name          = "instaman"
  spec.version       = Instaman::VERSION
  spec.authors       = ["hasan kursun"]
  spec.email         = ["kursunhasan97@gmail.com"]

  spec.summary       = %q{Instaman gem is used to increase the number of followers on Instagram.}
  spec.description   = %q{The Instaman gem interacts with the latest posts on the Instagram according to hashtags that you choose. It likes, follows and unfollows photos and users. Give me feedback and contact me via Instagram with @hasannkursunn username. }
  spec.homepage      = "http://github.com/hasannkursunn/instaman"
  spec.files = Dir['lib/**/*.rb']
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "watir", "~> 5.0"
  spec.add_development_dependency "chromedriver-helper", "~> 1.2"
end
