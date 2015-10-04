cask :v1 => 'handbrakecli-nightly' do
  version '20151002191346-875aec0'
  sha256 'a6c4dcfb2f46bdce23b7ff770403e6d50c99c32adb43823533f347ea4e1e9714'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
