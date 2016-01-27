cask 'handbrakecli-nightly' do
  version '20160126172216-fa95126'
  sha256 '18ba768b89d7c9b3092279c920e5a033cce47583a11c09669dce008c27ff3672'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
