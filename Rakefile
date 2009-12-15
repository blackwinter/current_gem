require %q{lib/current_gem/version}

begin
  require 'hen'

  Hen.lay! {{
    :rubyforge => {
      :project => %q{},
      :package => %q{current_gem}
    },

    :gem => {
      :version      => CurrentGem::VERSION,
      :summary      => %q{Maintain symlinks to the most recent versions of installed RubyGems.},
      :homepage     => 'http://github.com/blackwinter/current_gem',
      :files        => FileList['lib/**/*.rb'].to_a,
      :extra_files  => FileList['[A-Z]*'].to_a,
      :dependencies => %w[]
    }
  }}
rescue LoadError
  abort "Please install the 'hen' gem first."
end

### Place your custom Rake tasks here.
