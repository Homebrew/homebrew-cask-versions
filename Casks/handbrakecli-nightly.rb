cask :v1 => 'handbrakecli-nightly' do
  version '7010svn'
  sha256 '1ab548fe2c78fa8115736e0c26091283e2ab990825385012bf652ce3803322ac'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
