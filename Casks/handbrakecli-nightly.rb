cask 'handbrakecli-nightly' do
  version '20160910140502-cc9af94'
  sha256 '366c24e498a02a3bfd7159c76f8f91fab1076a7807af2ef82cf639abf85ffbff'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
