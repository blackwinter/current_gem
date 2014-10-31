#--
###############################################################################
#                                                                             #
# current_gem -- Maintain symlinks to current Ruby Gems                       #
#                                                                             #
# Copyright (C) 2009-2012 University of Cologne,                              #
#                         Albertus-Magnus-Platz,                              #
#                         50923 Cologne, Germany                              #
#                                                                             #
# Copyright (C) 2013-2014 Jens Wille                                          #
#                                                                             #
# Authors:                                                                    #
#     Jens Wille <jens.wille@gmail.com>                                       #
#                                                                             #
# current_gem is free software; you can redistribute it and/or modify it      #
# under the terms of the GNU Affero General Public License as published by    #
# the Free Software Foundation; either version 3 of the License, or (at your  #
# option) any later version.                                                  #
#                                                                             #
# current_gem is distributed in the hope that it will be useful, but WITHOUT  #
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       #
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License #
# for more details.                                                           #
#                                                                             #
# You should have received a copy of the GNU Affero General Public License    #
# along with current_gem. If not, see <http://www.gnu.org/licenses/>.         #
#                                                                             #
###############################################################################
#++

require 'fileutils'

require 'rubygems/installer'
require 'rubygems/uninstaller'

module CurrentGem

  extend self

  SPEC_DIR = ENV['CURRENT_GEM_SPEC_DIR'] || 'specifications'
  CURR_DIR = ENV['CURRENT_GEM_CURR_DIR'] || 'current'

  FileUtils = ENV['DRY_RUN'] ? ::FileUtils::DryRun : ::FileUtils

  def find(arg)
    case arg
      when Gem::Installer, Gem::Uninstaller then find_by_installer(arg)
      when Gem::Specification               then find_by_spec(arg)
      else                                       find_by_name(arg)
    end
  end

  alias_method :[], :find

  def path_for(arg)
    spec = find(arg) if can_symlink?
    current_path_for(spec) if spec
  end

  def version_for(arg)
    spec = find(arg)
    spec.version if spec
  end

  def update(installer)
    symlink(find(installer)) if can_symlink?
  end

  def update_all(gem_dir = Gem.dir)
    return unless can_symlink?

    path = base_path_for(gem_dir)
    FileUtils.rm_r(path) if File.directory?(path)

    Gem::Specification.latest_specs.each { |spec| symlink(spec, path) }
  end

  def can_symlink?
    if Gem.win_platform?
      warn 'WARNING:  Unable to use symlinks on Windows, skipping...'
      false
    else
      true
    end
  end

  private

  def find_by_installer(installer)
    spec, op = installer.spec, installer.is_a?(Gem::Installer) ? '>' : '!='

    curr = find_by_spec(spec, "#{op} #{spec.version}") || spec
    curr.loaded_from ||= File.join(installer.gem_home, SPEC_DIR, curr.spec_name)

    curr
  end

  def find_by_spec(spec, req = nil)
    find_by_name(spec.name, req)
  end

  def find_by_name(name, req = nil)
    req ||= Gem::Requirement.default

    prereleases, releases = Gem::Specification.find_all_by_name(
      name.to_s, req).partition { |spec| spec.version.prerelease? }

    releases.last || prereleases.last
  end

  def symlink(spec, path = base_path_for(spec))
    return unless can_symlink?

    FileUtils.mkdir_p(path) unless File.exist?(path)

    unless File.writable?(path) || ENV['DRY_RUN']
      raise Gem::FilePermissionError, path
    end

    if File.exist?(dst = current_path_for(spec, path)) || File.symlink?(dst)
      FileUtils.rm(dst)
    end

    if File.exist?(src = spec.full_gem_path)
      FileUtils.symlink(src, dst, verbose: Gem.configuration.really_verbose)
    end
  end

  def base_path_for(arg)
    File.join(arg.is_a?(Gem::Specification) ? arg.base_dir : arg, CURR_DIR)
  end

  def current_path_for(spec, path = base_path_for(spec))
    File.join(path, spec.name)
  end

end
