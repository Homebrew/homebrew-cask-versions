cask 'clion-eap' do
  version 'RC2,2017.1'
  sha256 '5675cf498abe6f8331719412d7511a9c469591c78a19cc30e32ffaa17c2e5f9b'

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
