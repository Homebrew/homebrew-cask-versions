cask 'handbrakecli-nightly' do
  version '20160412180411-8be786a'
  sha256 '812a9ce8bdb041dbeccf3944caf6fbd4bdac40f93983f7afcf6abee293b03311'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  binary 'HandBrakeCLI'
end
