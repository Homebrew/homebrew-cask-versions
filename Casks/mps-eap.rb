cask 'mps-eap' do
  version '3.4-EAP3'
  sha256 'b704505634ff55612104c33f4896f7c6b72c99c1f7c701fc35310b3f7d6801ce'

  url "http://download.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
  name 'JetBrains MPS EAP'
  homepage 'https://confluence.jetbrains.com/display/MPS/JetBrains+MPS+3.4+EAP+Download+Page'
  license :apache

  conflicts_with cask: 'mps'

  app "MPS #{version.major_minor} EAP.app"

  zap delete: [
                "~/Library/Application Support/MPS#{version.major_minor.no_dots}",
                "~/Library/Preferences/MPS#{version.major_minor.no_dots}",
                "~/Library/Caches/MPS#{version.major_minor.no_dots}",
                "~/Library/Logs/MPS#{version.major_minor.no_dots}",
              ]
end
