cask 'clion-eap' do
  version '2017.1,171.3019.8'
  sha256 '9c1dcb4709e71657073e029052155d52e6eae0a2244b1ea955a31b46a93b62bc'

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
