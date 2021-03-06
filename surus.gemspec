# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "surus/version"

Gem::Specification.new do |s|
  s.name        = "surus"
  s.version     = Surus::VERSION
  s.authors     = ["Jack Christensen"]
  s.email       = ["jack@jackchristensen.com"]
  s.homepage    = "https://github.com/JackC/surus"
  s.summary     = %q{PostgreSQL Acceleration for ActiveRecord}
  s.description = %q{Surus accelerates ActiveRecord with PostgreSQL specific types and
                    functionality. It enables indexed searching of serialized arrays and hashes.
                    It also can control PostgreSQL synchronous commit behavior. By relaxing
                    PostgreSQL's durability guarantee, transaction commit rate can be increased by
                    50% or more. }

  s.rubyforge_project = ""

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_dependency 'pg'
  s.add_dependency 'activerecord', ">= 3.1.0"
  
  s.add_development_dependency 'rspec', "~> 2.8.0"
  s.add_development_dependency 'guard', ">= 0.10.0"
  s.add_development_dependency 'guard-rspec', ">= 0.6.0"  
end
