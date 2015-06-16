cask :v1 => 'handbrakecli-nightly' do
  version '7298svn'
  sha256 '9087c2020a7aac5a345f734d6e892963687f1e3eef09383db089912b74d1afb6'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
