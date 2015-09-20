cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-815-7423434'
  sha256 'edc3cb8df77cb9b0d493c96554619c1d44afb207382516c1bbda9373c00d62b8'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-master-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
