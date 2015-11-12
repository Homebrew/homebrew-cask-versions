cask :v1 => 'handbrakecli-nightly' do
  version '20151110232157-6b713ad'
  sha256 'f514496d4ad39c3036429a97353b1bec19bea91ea136e3f652201d72e0d34bea'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
