cask 'clion-eap' do
  version '2017.1,171.2822.8'
  sha256 '7f535b73425dbb743e58895ba36911c57dd78cf49a2f915e6492230bb353a4ba'

  url "https://download.jetbrains.com/cpp/CLion-#{version.after_comma}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'

  conflicts_with cask: 'clion'

  app "CLion #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
                "~/Library/Preferences/CLion#{version.major_minor}",
              ]
end
