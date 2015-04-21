cask :v1 => 'handbrakecli-nightly' do
  version '7105svn'
  sha256 '302b9310b11a7397fcf68b608d62ad592d71241c357638e346883711d41fa014'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
