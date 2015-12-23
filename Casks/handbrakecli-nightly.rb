cask 'handbrakecli-nightly' do
  version '20151220192913-57a9f48'
  sha256 '0c79dc5c1def52501102898455ab4f7cc71ccb2123640aa969b0c168cda90826'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
