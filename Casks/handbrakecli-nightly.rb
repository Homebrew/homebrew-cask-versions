cask :v1 => 'handbrakecli-nightly' do
  version '6575svn'
  sha256 '61484a7c5b24c9ac25dfe545050968b351d393c8406e6035fee9d18009d98d71'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
