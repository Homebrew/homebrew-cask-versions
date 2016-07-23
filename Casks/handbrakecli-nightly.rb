cask 'handbrakecli-nightly' do
  version '20160721084529-15d868a'
  sha256 'b478758900dc4d658a9de4aa13076a516e6af24ada5bbf945173747064a978da'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
