cask 'gogland-eap' do
  version '1.0,163.12024.32'
  sha256 '3c5010454b4526fbef4e9eeed7d01d084ac5dcaf6fceeff952c7243502478a3c'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go/'

  conflicts_with cask: 'gogland'

  app "Gogland #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ]
end
