# -*- encoding: utf-8 -*-
# stub: current_gem 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "current_gem"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jens Wille"]
  s.date = "2013-12-19"
  s.description = "Maintain symlinks to the most recent versions of installed RubyGems."
  s.email = "jens.wille@gmail.com"
  s.extra_rdoc_files = ["README", "COPYING", "ChangeLog"]
  s.files = ["lib/current_gem.rb", "lib/current_gem/version.rb", "lib/rubygems/commands/current_path_command.rb", "lib/rubygems/commands/current_version_command.rb", "lib/rubygems/commands/symlink_current_command.rb", "lib/rubygems_plugin.rb", "COPYING", "ChangeLog", "README", "Rakefile"]
  s.homepage = "http://github.com/blackwinter/current_gem"
  s.licenses = ["AGPL-3.0"]
  s.rdoc_options = ["--title", "current_gem Application documentation (v0.0.6)", "--charset", "UTF-8", "--line-numbers", "--all", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.1.11"
  s.summary = "Maintain symlinks to the most recent versions of installed RubyGems."
end
