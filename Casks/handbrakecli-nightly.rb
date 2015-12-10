cask :v1 => 'handbrakecli-nightly' do
  version '20151208155252-c1d9ab7'
  sha256 'b4febc1cf16e497d81da119264e8666c91adfbf352f462b1ad8826e6076e5016'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
