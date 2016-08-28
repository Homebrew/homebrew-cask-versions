cask 'handbrakecli-nightly' do
  version '20160826204920-429fce1'
  sha256 'd48b5471c86f78b2353eb0d06e1ebe07e299a48e41484cd197c7561b3df69a59'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
