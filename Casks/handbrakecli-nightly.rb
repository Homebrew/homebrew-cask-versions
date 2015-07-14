cask :v1 => 'handbrakecli-nightly' do
  version '7349svn'
  sha256 '252d69fd2ed3af43d2ab4194c76b94b114f0124f4a005fe35243abf13fd99cac'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.7_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
