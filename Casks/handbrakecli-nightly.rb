cask :v1 => 'handbrakecli-nightly' do
  version '20150926205803-a18db8b'
  sha256 '44dc17fb3d0111f4392aa2d7f5a254d92d955091873267f8ac441771fc236af4'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
