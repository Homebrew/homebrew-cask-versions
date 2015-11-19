cask :v1 => 'handbrakecli-nightly' do
  version '20151116073140-7bf2842'
  sha256 '8e057a1faf5fa88f5d4f38c39a27a860228b13b5ee87c8516f2807d39147bdc3'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
