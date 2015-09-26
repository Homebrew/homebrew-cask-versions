cask :v1 => 'handbrakecli-nightly' do
  version '20150925205142-e500c7d'
  sha256 'ce311128eb1444144b35f730a5b3b10d010ac2fa9eca355ed0cc207db16299f6'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
