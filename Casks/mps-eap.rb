cask 'mps-eap' do
  version '3.4-Preview'
  sha256 '9973c8a8551ef8c607b47ea18927a6e76c445aaf7aa18d312043c936b7b04d8c'

  url "http://download.jetbrains.com/mps/#{version.major_minor.no_dots}/MPS-#{version}-macos-jdk-bundled.dmg"
  name 'JetBrains MPS EAP'
  homepage 'https://confluence.jetbrains.com/display/MPS/JetBrains+MPS+3.4+EAP+Download+Page'

  conflicts_with cask: 'mps'

  app "MPS #{version.major_minor} EAP.app"

  zap delete: [
                "~/Library/Application Support/MPS#{version.major_minor.no_dots}",
                "~/Library/Preferences/MPS#{version.major_minor.no_dots}",
                "~/Library/Caches/MPS#{version.major_minor.no_dots}",
                "~/Library/Logs/MPS#{version.major_minor.no_dots}",
              ]
end
