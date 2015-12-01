cask :v1 => 'handbrakecli-nightly' do
  version '20151126230838-46e641c'
  sha256 'e5f54a23d09bd681ec2c291c5d122ae85386e188a2be69c793e9c7430b826b26'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
