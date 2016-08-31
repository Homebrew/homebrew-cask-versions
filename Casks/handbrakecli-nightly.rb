cask 'handbrakecli-nightly' do
  version '20160829200314-5cc5443'
  sha256 'cc39145a09f323512533176ea0f2601dba391fabd8b412b911b0d7c38a4db365'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :lion'

  binary 'HandBrakeCLI'
end
