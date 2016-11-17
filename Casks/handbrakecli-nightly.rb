cask 'handbrakecli-nightly' do
  version '20161115205100-ef33de1'
  sha256 '1ee46b7cd714ca44e2fbe0bd7f9e7793a04f919a615fded69362d9228f690a1d'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
