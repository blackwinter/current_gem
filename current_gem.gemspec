# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{current_gem}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Jens Wille}]
  s.date = %q{2011-05-05}
  s.description = %q{Maintain symlinks to the most recent versions of installed RubyGems.}
  s.email = %q{jens.wille@uni-koeln.de}
  s.extra_rdoc_files = [%q{README}, %q{COPYING}, %q{ChangeLog}]
  s.files = [%q{lib/current_gem.rb}, %q{lib/current_gem/version.rb}, %q{lib/rubygems/commands/current_path_command.rb}, %q{lib/rubygems/commands/symlink_current_command.rb}, %q{lib/rubygems/commands/current_version_command.rb}, %q{lib/rubygems_plugin.rb}, %q{README}, %q{ChangeLog}, %q{Rakefile}, %q{COPYING}]
  s.homepage = %q{http://github.com/blackwinter/current_gem}
  s.rdoc_options = [%q{--line-numbers}, %q{--main}, %q{README}, %q{--all}, %q{--charset}, %q{UTF-8}, %q{--title}, %q{current_gem Application documentation (v0.0.4)}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{1.8.0}
  s.summary = %q{Maintain symlinks to the most recent versions of installed RubyGems.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
