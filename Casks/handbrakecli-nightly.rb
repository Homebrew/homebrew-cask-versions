cask 'handbrakecli-nightly' do
  version '20151215211028-c0111a2'
  sha256 '4bd0b41ad5fc480df0970e9c0123f31879e5da7d10e76073b1c82a733ea4c6ca'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
