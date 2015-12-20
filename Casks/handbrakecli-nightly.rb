cask 'handbrakecli-nightly' do
  version '20151215211028-c0111a2'
  sha256 '2128898e54199afc891e27591e647e2fa0d59a4a7f4fdf0a631ed42a12e2483a'

  url "http://download.handbrake.fr/nightly/HandBrakeCLI-#{version}-master-osx.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
