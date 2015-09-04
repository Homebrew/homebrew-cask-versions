cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-797-5f6634b'
  sha256 '30875057c9c3f1ab27051116b1598fc2e7b8963731e13ac83e4c80c0e9df9ec5'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
