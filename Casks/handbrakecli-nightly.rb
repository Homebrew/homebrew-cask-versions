cask :v1 => 'handbrakecli-nightly' do
  version '20151026153419-79df3e5'
  sha256 '0e4de52a94131ddde3eb60f3686c50d44651dd3088762ac4830f6318502e070e'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
