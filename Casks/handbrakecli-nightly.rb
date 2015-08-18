cask :v1 => 'handbrakecli-nightly' do
  version '7401svn'
  sha256 '47a0547357be559292e1ec303ff6f96be6f529c07fa4073ce5e8d43241350c5f'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.7_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
