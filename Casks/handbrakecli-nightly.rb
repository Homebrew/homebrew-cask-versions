cask :v1 => 'handbrakecli-nightly' do
  version '6685svn'
  sha256 'c3d0633c3f486c14880532561e3e9d59c9d213445cafec7c68077110608004d5'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
