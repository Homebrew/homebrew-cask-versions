cask :v1 => 'handbrakecli-nightly' do
  version '6592svn'
  sha256 '582143d519f51c44b4722583122fdc52ad35e1a24aa4a42e4569da2df06b04ae'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
