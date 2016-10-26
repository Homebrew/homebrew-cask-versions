cask 'handbrakecli-nightly' do
  version '20161024182153-514723b'
  sha256 '38b2be2530ca6d1d54553768481608151991203d7804980f0809af273f0d8bc0'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
