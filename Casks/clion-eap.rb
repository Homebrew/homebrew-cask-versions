cask 'clion-eap' do
  version '2016.3.2,163.10154.14'
  sha256 '0f1f473b75848b204a21b411703dba91695052678a6c9db0ac4b592f4f59c7a3'

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
