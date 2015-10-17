cask :v1 => 'handbrakecli-nightly' do
  version '20151015154842-69b61a0'
  sha256 'f3fbf7a60705b8b9a27f0a89159a8360f144b9bb01473ceb1e19772a9f85997e'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
