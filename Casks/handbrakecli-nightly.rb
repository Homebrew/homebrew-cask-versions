cask :v1 => 'handbrakecli-nightly' do
  version '7412svn'
  sha256 'c7ea5ad4ee1f5af520b4eec7ff74356f5752c5dfb585d10a1ef7de0cca19e175'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.7_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
