cask :v1 => 'handbrakecli-nightly' do
  version '6590svn'
  sha256 '6e5e2fabcaf457ed268e443d18bd46971f5e4bfdafdfc4967348a2a8bb105e52'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
