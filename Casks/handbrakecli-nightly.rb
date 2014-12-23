cask :v1 => 'handbrakecli-nightly' do
  version '6642svn'
  sha256 '25bb0e977db0ea667bc3b8989b730008f1b222080f938c69e50221bb1ebc2d56'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
