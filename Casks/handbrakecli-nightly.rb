cask :v1 => 'handbrakecli-nightly' do
  version '20151020194320-618bfd0'
  sha256 'dd1cd3e608dae3c2c1819e2e2075bb3572627c6df16d0f724a820aa44eeb4a4c'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
