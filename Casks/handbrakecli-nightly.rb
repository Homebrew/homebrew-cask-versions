cask :v1 => 'handbrakecli-nightly' do
  version '20151108174217-ca28edf'
  sha256 '2527457ec33c4794f2a65894be2191a120b8d00e67b09664f82c96a5fb0d1d7f'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
