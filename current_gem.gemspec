# -*- encoding: utf-8 -*-
# stub: current_gem 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "current_gem"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jens Wille"]
  s.date = "2014-09-17"
  s.description = "Maintain symlinks to the most recent versions of installed Ruby Gems."
  s.email = "jens.wille@gmail.com"
  s.extra_rdoc_files = ["README", "COPYING", "ChangeLog"]
  s.files = ["COPYING", "ChangeLog", "README", "Rakefile", "lib/current_gem.rb", "lib/current_gem/version.rb", "lib/rubygems/commands/current_path_command.rb", "lib/rubygems/commands/current_version_command.rb", "lib/rubygems/commands/symlink_current_command.rb", "lib/rubygems_plugin.rb"]
  s.homepage = "http://github.com/blackwinter/current_gem"
  s.licenses = ["AGPL-3.0"]
  s.rdoc_options = ["--title", "current_gem Application documentation (v0.1.0)", "--charset", "UTF-8", "--line-numbers", "--all", "--main", "README"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.4.1"
  s.summary = "Maintain symlinks to the most recent versions of installed Ruby Gems."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hen>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<hen>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<hen>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
