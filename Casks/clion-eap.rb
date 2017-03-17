cask 'clion-eap' do
  version 'RC,2017.1'
  sha256 '3d8371cfa8362c1d50cd536ed0309ddf47090abcdb98aeb71b48bc79c589382e'

  url "https://download.jetbrains.com/cpp/CLion-#{version.after_comma}-#{version.before_comma}.dmg"
  name 'CLion EAP'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'

  conflicts_with cask: 'clion'

  app "CLion #{version.after_comma} EAP.app"

  zap delete: [
                "~/Library/Application Support/CLion#{version.after_comma.major_minor}",
                "~/Library/Caches/CLion#{version.after_comma.major_minor}",
                "~/Library/Logs/CLion#{version.after_comma.major_minor}",
                "~/Library/Preferences/CLion#{version.after_comma.major_minor}",
              ]
end
