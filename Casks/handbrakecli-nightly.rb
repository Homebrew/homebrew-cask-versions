cask 'handbrakecli-nightly' do
  version '20160903145645-29c7a63'
  sha256 'f8706306617155d75ea05e20069f9327272ad3e70b00a58422af64d8b957ecc7'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
