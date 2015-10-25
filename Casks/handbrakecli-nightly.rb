cask :v1 => 'handbrakecli-nightly' do
  version '20151024213431-054b9d9'
  sha256 'f1a9cd983186d578212371e595d94bbb27cbf92178df78e39b199f36ce3facc2'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
