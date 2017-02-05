cask 'gogland-eap' do
  version '1.0,163.12024.20'
  sha256 '616a4d268f7d9090199dc2f82438819bde91704b07af2e2dc31749155a0b6fd0'

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
