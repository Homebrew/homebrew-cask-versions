cask :v1 => 'handbrakecli-nightly' do
  version '20151001221352-d72f637'
  sha256 '3b3d055f49ab4643d25b377b69b8f737592ede19efbd9961ad564b3bab7631b6'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
