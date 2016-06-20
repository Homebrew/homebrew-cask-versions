cask 'handbrakecli-nightly' do
  version '20160617180737-7b2284d'
  sha256 '626288409645bfce28cbc3f905e575480947105e013344e68b8c66e013cdf019'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
