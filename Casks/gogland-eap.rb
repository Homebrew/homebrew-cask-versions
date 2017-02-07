cask 'gogland-eap' do
  version '1.0,163.12024.27'
  sha256 '73becc6269a95d00d235f95556bac727ede7e01e5b426aa71aa0db4f4ac1949c'

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
