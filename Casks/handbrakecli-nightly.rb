cask :v1 => 'handbrakecli-nightly' do
  version '6897svn'
  sha256 '3cfd28e62a517fc5fdecd82b7fe2cb14c3ca3061694b5b0c2b0a1938f1f8b638'

  url "http://download.handbrake.fr/nightly/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :gpl

  binary 'HandBrakeCLI'

  depends_on :macos => '>= :snow_leopard'
end
