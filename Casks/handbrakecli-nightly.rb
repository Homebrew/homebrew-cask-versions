cask :v1 => 'handbrakecli-nightly' do
  version '20151112180931-476421b'
  sha256 '848f9b4cfc4155da35c709d460cd20bb8dfa5b701fd064aaed83c9f9db13b08c'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
