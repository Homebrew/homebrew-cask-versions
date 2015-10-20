cask :v1 => 'handbrakecli-nightly' do
  version '20151019201404-ba3d0e4'
  sha256 'a630d96be8043c9f814695dd1fb7021e9147340358314104c01d6c1950296fe8'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
