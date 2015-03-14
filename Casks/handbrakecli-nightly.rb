cask :v1 => 'handbrakecli-nightly' do
  version '6985svn'
  sha256 'c2dd1a1c94dff36b74bbabea48d0361666208b94b305aa0e9b87aa182b6af989'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
