cask :v1 => 'handbrakecli-nightly' do
  version '6714svn'
  sha256 '57eb6aa19d84e281e8d696bf1f3ecb2b84b3d6d13144c133f94b00530161968a'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
