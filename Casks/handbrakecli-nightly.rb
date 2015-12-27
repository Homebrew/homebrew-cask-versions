cask 'handbrakecli-nightly' do
  version '20151227004615-4e396c7'
  sha256 '89d8256ca7a51c9cddaa97bf6cc0afe3420114bf631ba9f99c33225995eeb6cc'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
