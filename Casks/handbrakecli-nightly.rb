cask 'handbrakecli-nightly' do
  version '20161030210637-7fbb668'
  sha256 'a4c6a93f5f50b5223f1d2d818a5fb75d36216165ed57bdb2cb025b4505e1f016'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
