cask :v1 => 'handbrakecli-nightly' do
  version '6752svn'
  sha256 'a9b2d95e47a72b5cd918bd3b2d8f2064cec1b5f8b96b441dabc60af63aefa4d2'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
