cask 'mps-eap' do
  version '3.4.4'
  sha256 '068cad86ae8fa40674e3b663328587b466a4c3a0560b0789746e77953260030e'

  url "http://download.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
  name 'JetBrains MPS EAP'
  homepage 'https://confluence.jetbrains.com/display/MPS/JetBrains+MPS+3.4+Download+Page'

  conflicts_with cask: 'mps'

  app "MPS #{version.major_minor} EAP.app"

  zap delete: [
                "~/Library/Application Support/MPS#{version.major_minor.no_dots}",
                "~/Library/Preferences/MPS#{version.major_minor.no_dots}",
                "~/Library/Caches/MPS#{version.major_minor.no_dots}",
                "~/Library/Logs/MPS#{version.major_minor.no_dots}",
              ]
end
