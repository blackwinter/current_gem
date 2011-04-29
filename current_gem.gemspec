# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{current_gem}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jens Wille"]
  s.date = %q{2011-04-29}
  s.description = %q{Maintain symlinks to the most recent versions of installed RubyGems.}
  s.email = %q{jens.wille@uni-koeln.de}
  s.extra_rdoc_files = ["README", "COPYING", "ChangeLog"]
  s.files = ["lib/current_gem.rb", "lib/current_gem/version.rb", "lib/rubygems/commands/current_path_command.rb", "lib/rubygems/commands/symlink_current_command.rb", "lib/rubygems/commands/current_version_command.rb", "lib/rubygems_plugin.rb", "README", "ChangeLog", "Rakefile", "COPYING"]
  s.homepage = %q{http://github.com/blackwinter/current_gem}
  s.rdoc_options = ["--charset", "UTF-8", "--title", "current_gem Application documentation (v0.0.3)", "--main", "README", "--line-numbers", "--all"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Maintain symlinks to the most recent versions of installed RubyGems.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
