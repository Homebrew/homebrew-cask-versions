cask 'mps-eap' do
  version '3.4-EAP2'
  sha256 'db180433e0bad30817ca1c28519786a71126e2fe0b58ba4bc920d8ce558bca59'

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
