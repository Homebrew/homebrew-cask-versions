cask :v1 => 'handbrakecli-nightly' do
  version '20150929174958-c5360d6'
  sha256 'cf9d4d0e2ab50bf4eae58f9b074ddd4ded4e6acbd93b68b919bcc2fac6590701'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
