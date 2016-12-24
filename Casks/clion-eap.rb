cask 'clion-eap' do
  version 'RC,2016.3.2'
  sha256 '5042c0064fdc7bed39bc0720cca8c823df5d66805c09f05632859a90e4fb44df'

  url "https://download.jetbrains.com/cpp/CLion-#{version.after_comma}-#{version.before_comma}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'

  conflicts_with cask: 'clion'

  app 'CLion.app'

  zap delete: [
                "~/Library/Application Support/CLion#{version.after_comma.major_minor}",
                "~/Library/Caches/CLion#{version.after_comma.major_minor}",
                "~/Library/Logs/CLion#{version.after_comma.major_minor}",
                "~/Library/Preferences/CLion#{version.after_comma.major_minor}",
              ]
end
