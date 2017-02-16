cask 'clion-eap' do
  version '2017.1,171.3224.8'
  sha256 'c1467f7f2a79a0c7dc49d2200903fae22e891a20648402dc2b07a7ab96ac4844'

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
