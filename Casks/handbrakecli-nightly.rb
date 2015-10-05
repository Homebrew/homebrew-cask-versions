cask :v1 => 'handbrakecli-nightly' do
  version '20151003171838-7323a7d'
  sha256 '327ec8e8060f0ccfabab72a411342bd60630064c5233002c221c463248ce2462'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
