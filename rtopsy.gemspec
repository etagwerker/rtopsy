# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rtopsy}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ernesto Tagwerker"]
  s.date = %q{2009-10-28}
  s.description = %q{A ruby gem implementation of the Topsy API}
  s.email = ["etagwerker@aycron.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/rtopsy.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_rtopsy.rb"]
  s.homepage = %q{http://github.com/etagwerker/rtopsy}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rtopsy}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A ruby gem implementation of the Topsy API}
  s.test_files = ["test/test_helper.rb", "test/test_rtopsy.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.4.3"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<httparty>, [">= 0.4.3"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.4.3"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
