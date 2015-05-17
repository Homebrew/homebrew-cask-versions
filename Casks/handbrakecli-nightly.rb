cask :v1 => 'handbrakecli-nightly' do
  version '7201svn'
  sha256 'd71fbf6905e19d4b3d3e0982a05e1fb985a008ec6c18a1d620d2bb6f47999d43'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
