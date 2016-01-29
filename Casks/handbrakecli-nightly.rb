cask 'handbrakecli-nightly' do
  version '20160127194403-aa9e61d'
  sha256 '762678a6ed3fb2efdacde28364ddec7c8433a8072e0c2d80266acb331a0b3f5b'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
