cask :v1 => 'handbrakecli-nightly' do
  version '7168svn'
  sha256 '297b32cb22386bcbbddfc4cb1cdf4048e17aaa583f9fae0792292b971231c2ec'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
