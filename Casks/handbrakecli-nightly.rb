cask :v1 => 'handbrakecli-nightly' do
  version '6675svn'
  sha256 'd64d63700af9eb77ed1e90ae4288f0f8d171657d7fb91f84d519203e9458cf44'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
