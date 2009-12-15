# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{current_gem}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jens Wille"]
  s.date = %q{2009-12-15}
  s.description = %q{Maintain symlinks to the most recent versions of installed RubyGems.}
  s.email = %q{jens.wille@uni-koeln.de}
  s.extra_rdoc_files = ["COPYING", "ChangeLog", "README"]
  s.files = ["lib/rubygems/commands/current_version_command.rb", "lib/rubygems/commands/current_path_command.rb", "lib/rubygems/commands/symlink_current_command.rb", "lib/rubygems_plugin.rb", "lib/current_gem/version.rb", "lib/current_gem.rb", "Rakefile", "COPYING", "ChangeLog", "README"]
  s.homepage = %q{http://.rubyforge.org/current_gem}
  s.rdoc_options = ["--main", "README", "--line-numbers", "--title", "current_gem Application documentation", "--inline-source", "--all", "--charset", "UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Maintain symlinks to the most recent versions of installed RubyGems.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
