require File.expand_path(%q{../lib/current_gem/version}, __FILE__)

begin
  require 'hen'

  Hen.lay! {{
    :gem => {
      :name     => %q{current_gem},
      :version  => CurrentGem::VERSION,
      :summary  => %q{Maintain symlinks to the most recent versions of installed RubyGems.},
      :author   => %q{Jens Wille},
      :email    => %q{jens.wille@gmail.com},
      :license  => %q{AGPL},
      :homepage => :blackwinter,

      :required_rubygems_version => '>= 1.8.0'
    }
  }}
rescue LoadError => err
  warn "Please install the `hen' gem. (#{err})"
end
