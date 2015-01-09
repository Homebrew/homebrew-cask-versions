cask :v1 => 'handbrakecli-nightly' do
  version '6695svn'
  sha256 '6e5b7ac6b34436b8034e20685aa99a9a59ce009ab4226f7d7d1cb9448ebb0242'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
