cask :v1 => 'handbrakecli-nightly' do
  version '20151010195026-19916cb'
  sha256 '29cf46884ab9636fed0d505419ccd52acbed0209b39b4854877a11918d82030c'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
