cask :v1 => 'handbrakecli-nightly' do
  version '6605svn'
  sha256 '0c4da5c55355c5f6b8d59caa8a01bcfd5c06721b83a1bb9e09b7123c32aabdbb'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
