# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jenkins/plugin/tools/version"

Gem::Specification.new do |s|
  s.name        = "jenkins-plugin-tools"
  s.version     = Jenkins::Plugin::Tools::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Charles Lowell"]
  s.email       = ["cowboyd@thefrontside.net"]
  s.homepage    = "http://github.com/cowboyd/jenkins-plugins.rb"
  s.summary     = %q{Tools for creating and building Jenkins Ruby plugins}
  s.description = %q{I'll think of a better description later, but if you're reading this, then I haven't}

  s.rubyforge_project = "jenkins-plugin-tools"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rubyzip"
  s.add_dependency "thor"
  s.add_dependency "jenkins-war"

  s.add_development_dependency "rspec", "~> 2.0"
  s.add_development_dependency "cucumber", "~> 1.0"
  s.add_development_dependency "jenkins-war"

end
