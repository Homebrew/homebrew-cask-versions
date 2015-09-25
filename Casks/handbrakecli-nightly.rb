cask :v1 => 'handbrakecli-nightly' do
  version '20150924023224-2a66431'
  sha256 '29c6902d7f087bc7ceee829f8c22f3b4e101bd844d69d86991d7b232e5c47338'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
