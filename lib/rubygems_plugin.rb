require 'rubygems/command_manager'
require 'current_gem'

if CurrentGem.can_symlink?

  Gem.post_install   { |installer|   CurrentGem.update(installer)   }
  Gem.post_uninstall { |uninstaller| CurrentGem.update(uninstaller) }

  [:symlink_current, :current_path, :current_version].each { |command|
    Gem::CommandManager.instance.register_command(command)
  }

end
