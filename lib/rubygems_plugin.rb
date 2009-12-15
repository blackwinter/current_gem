require 'rubygems/command_manager'
require 'current_gem'

if CurrentGem.can_symlink?

  Gem.post_install do |inst|
    CurrentGem.update(inst)
  end

  Gem.post_uninstall do |uninst|
    CurrentGem.update(uninst)
  end

  [:symlink_current, :current_path, :current_version].each { |command|
    Gem::CommandManager.instance.register_command(command)
  }

end
