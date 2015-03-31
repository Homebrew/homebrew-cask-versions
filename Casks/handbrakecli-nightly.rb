cask :v1 => 'handbrakecli-nightly' do
  version '7031svn'
  sha256 '29584bd078000dc79c95c56aa9483e7bc5d6cce048349414e4016bcea68ef76d'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
