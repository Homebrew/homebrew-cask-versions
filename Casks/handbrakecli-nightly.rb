cask :v1 => 'handbrakecli-nightly' do
  version '20151031174057-e0f9ebd'
  sha256 '6969332f396f5cf838e8c01d95b3f765ddc071c9d71ed79862231a61b7285b19'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
