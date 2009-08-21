# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'rubington'

task :default => 'spec:run'

PROJ.name = 'rubington'
PROJ.authors = 'Thomas Gallaway'
PROJ.email = 'atomist@gmail.com'
PROJ.url = 'http://www.atomlab.us/projects/rubington'
PROJ.version = Rubington::VERSION
PROJ.rubyforge.name = 'rubington'

PROJ.ignore_file = '.gitignore'

PROJ.spec.opts << '--color'

# EOF
