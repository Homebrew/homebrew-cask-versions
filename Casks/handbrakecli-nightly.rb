cask :v1 => 'handbrakecli-nightly' do
  version '7073svn'
  sha256 '50a374f8b8984735e8f2b49d5be78f2dc713d433e3982ce539697c31fea190de'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
