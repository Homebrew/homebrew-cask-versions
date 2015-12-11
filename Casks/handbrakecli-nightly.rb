cask :v1 => 'handbrakecli-nightly' do
  version '20151209210633-3443f6a'
  sha256 '20640dd435919c6431f6916f95332624a1065e577761ad2c4e0d276dba7ab5cf'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
