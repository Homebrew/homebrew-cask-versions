cask :v1 => 'handbrakecli-nightly' do
  version '6937svn'
  sha256 '90b9a33ea8e87c3a0a7ce1bb68bc71a63973800cfe373e5a67960ea573db3877'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
