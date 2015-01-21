cask :v1 => 'handbrakecli-nightly' do
  version '6782svn'
  sha256 'a661254da12a5fcaaab80b822bed78e8e000800042380bf3ccdfacf017cdb7fa'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'
end
