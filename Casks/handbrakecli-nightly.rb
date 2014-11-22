cask :v1 => 'handbrakecli-nightly' do
  version '6536svn'
  sha256 'e0efe336b287ae5df4b592b74434a6c61cdfda9affea8409fd8bba03034bc82d'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
