cask :v1 => 'handbrakecli-nightly' do
  version '20151126230838-46e641c'
  sha256 '36a67b03c62930ec2bf42c75a9bccb40d36e397b132fd362e1f6753a02df4c48'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
