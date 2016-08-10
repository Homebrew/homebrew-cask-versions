cask 'handbrakecli-nightly' do
  version '20160808205508-b1bc87c'
  sha256 '59a5efa69c0029a21a40ff6990436f10fd56f5252a93383e636d8edeceec8b9a'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
