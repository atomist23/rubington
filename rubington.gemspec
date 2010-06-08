# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubington}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Gallaway"]
  s.date = %q{2009-08-21}
  s.default_executable = %q{rubington}
  s.description = %q{The idea is to add dc & surrounding areas (VA&MD) services into a gem.}
  s.email = %q{atomist@gmail.com}
  s.executables = ["rubington"]
  s.extra_rdoc_files = ["History.txt", "README.txt", "bin/rubington"]
  s.files = ["History.txt", "README.txt", "Rakefile", "bin/rubington", "lib/rubington.rb", "lib/rubington/citizen_atlas.rb", "spec/rubington_spec.rb", "spec/spec_helper.rb", "test/test_rubington.rb"]
  s.homepage = %q{http://atomist.github.com/rubington/}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubington}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{The idea is to add dc & surrounding areas (VA&MD) services into a gem}
  s.test_files = ["test/test_rubington.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.5.1"])
      s.add_development_dependency(%q<httparty>, [">= 0.4.4"])
    else
      s.add_dependency(%q<bones>, [">= 2.5.1"])
      s.add_dependency(%q<httparty>, [">= 0.4.4"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.5.1"])
    s.add_dependency(%q<httparty>, [">= 0.4.4"])
  end
end
