cask :v1 => 'handbrakecli-nightly' do
  version '20151008180809-f9c5593'
  sha256 '82b94cca5e2c459ff2beee22c838c0b211fa55ea4ec3ef55fbca2bc89f67d953'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
