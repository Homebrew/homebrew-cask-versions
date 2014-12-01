cask :v1 => 'handbrakecli-nightly' do
  version '6562svn'
  sha256 'fb93b620e1b106695183fd507c445da209351773c7719ef4144e9957cdbd5c86'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
