cask 'clion-eap' do
  version '2017.1,171.3691.13'
  sha256 'ae124f4d1e2419546de705e119083a967144b06465330a453a2e0ebca7140cd3'

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
