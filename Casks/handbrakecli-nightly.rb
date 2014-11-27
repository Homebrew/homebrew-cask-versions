cask :v1 => 'handbrakecli-nightly' do
  version '6559svn'
  sha256 'b66feea96cb15ab7f54498235670ead24245af51e339b7218eabc58446692e17'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
