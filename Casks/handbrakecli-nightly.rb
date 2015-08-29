cask :v1 => 'handbrakecli-nightly' do
  version '0.10.2-788-4fb5fbd'
  sha256 '9105700eb0bcc818d7bff96bdf1b15de56beeebe4ffae1dfd89cba740be46347'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.7_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
