# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ssh-keyput}
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Christopher Sexton"]
  s.date = %q{2009-01-24}
  s.default_executable = %q{ssh-keyput}
  s.description = %q{TODO}
  s.email = %q{csexton@gmail.com}
  s.executables = ["ssh-keyput"]
  s.files = ["README.markdown", "VERSION.yml", "bin/ssh-keyput", "lib/runner.rb", "lib/ssh_keyput.rb", "test/ssh_keyput_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/csexton/ssh-keyput}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ssh key put utility}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
