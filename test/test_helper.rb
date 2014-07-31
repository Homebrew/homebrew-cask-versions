require 'bundler'
require 'bundler/setup'

# add cask lib to load path
brew_cask_path = Pathname.new(File.expand_path(__FILE__+'/../../../homebrew-cask/'))
lib_path = brew_cask_path.join('lib')

$:.push(lib_path)

# add homebrew to load path
homebrew_path = Pathname(`brew --prefix`.chomp)
homebrew_path = Pathname('/usr/local') unless homebrew_path.exist?
$:.push(homebrew_path.join('Library', 'Homebrew'))

# require homebrew testing env
require 'test/testing_env'

# must be called after testing_env so at_exit hooks are in proper order
require 'minitest/autorun'
# todo, re-enable minitest-colorize, broken under current test environment for unknown reasons
# require 'minitest-colorize'

# our baby
require 'cask'

# pretend like we installed the cask tap
project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
taps_dest = HOMEBREW_LIBRARY/"Taps/caskroom"

# create directories
FileUtils.mkdir_p taps_dest
HOMEBREW_PREFIX.join('bin').mkdir

FileUtils.ln_s project_root, taps_dest/"homebrew-cask"

# Common superclass for tests casks for when we need to filter them out
class TestCask < Cask; end
