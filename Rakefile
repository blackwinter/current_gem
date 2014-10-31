require_relative 'lib/current_gem/version'

begin
  require 'hen'

  Hen.lay! {{
    gem: {
      name:     %q{current_gem},
      version:  CurrentGem::VERSION,
      summary:  %q{Maintain symlinks to the most recent versions of installed Ruby Gems.},
      author:   %q{Jens Wille},
      email:    %q{jens.wille@gmail.com},
      license:  %q{AGPL-3.0},
      homepage: :blackwinter,

      required_ruby_version:     '>= 1.9.3',
      required_rubygems_version: '>= 1.8.0'
    }
  }}
rescue LoadError => err
  warn "Please install the `hen' gem. (#{err})"
end
