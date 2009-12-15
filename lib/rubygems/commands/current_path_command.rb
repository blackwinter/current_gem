#--
###############################################################################
#                                                                             #
# A component of current_gem.                                                 #
#                                                                             #
# Copyright (C) 2009 University of Cologne,                                   #
#                    Albertus-Magnus-Platz,                                   #
#                    50932 Cologne, Germany                                   #
#                                                                             #
# Authors:                                                                    #
#     Jens Wille <jens.wille@uni-koeln.de>                                    #
#                                                                             #
# current_gem is free software; you can redistribute it and/or modify it      #
# under the terms of the GNU General Public License as published by the Free  #
# Software Foundation; either version 3 of the License, or (at your option)   #
# any later version.                                                          #
#                                                                             #
# current_gem is distributed in the hope that it will be useful, but WITHOUT  #
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or       #
# FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for    #
# more details.                                                               #
#                                                                             #
# You should have received a copy of the GNU General Public License along     #
# with current_gem. If not, see <http://www.gnu.org/licenses/>.               #
#                                                                             #
###############################################################################
#++

class Gem::Commands::CurrentPathCommand < Gem::Command

  def initialize
    super 'current_path', "Display the location of a gem's current symlink",
      :resolve => false

    add_option('-r', '--resolve', 'Display value of symbolic link') { |value, options|
      options[:resolve] = true
    }
  end

  def arguments
    'GEMNAME       name of gem to display'
  end

  def usage
    "#{program_name} GEMNAME"
  end

  def execute
    path = CurrentGem.path_for(get_one_gem_name)
    return unless path && File.exists?(path)

    path = File.readlink(path) if options[:resolve]
    say path
  end

end
