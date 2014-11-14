cask :v1 => 'handbrakecli-nightly' do
  version '6509svn'
  sha256 '5beb028c999cebf8112413c46821b348d2584139fbe2070704522ade45c44e63'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
