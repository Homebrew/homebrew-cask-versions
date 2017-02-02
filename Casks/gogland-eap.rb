cask 'gogland-eap' do
  version '1.0,163.10615.22'
  sha256 '850722f8c217fbd39cdfca7f223f6ed27065d7c7fb0ed36ff788aba02d867e15'

  url "https://download.jetbrains.com/go/gogland-#{version.after_comma}.dmg"
  name 'Gogland EAP'
  homepage 'https://www.jetbrains.com/go'

  conflicts_with cask: 'gogland'

  app "Gogland #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Preferences/Gogland#{version.major_minor}",
                "~/Library/Application Support/Gogland#{version.major_minor}",
                "~/Library/Caches/Gogland#{version.major_minor}",
                "~/Library/Logs/Gogland#{version.major_minor}",
              ]
end
