cask 'clion-eap' do
  version '2016.1'
  sha256 'c791636f23c273dd07bbcab4f2495a3532501ec2ec3975c7c80cc3b915686be4'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://confluence.jetbrains.com/display/CLION/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'clion'

  app 'CLion.app'

  zap delete: [
                "~/.CLion#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.clion.*.plist',
                "~/Library/Preferences/CLion#{version.major_minor}",
                "~/Library/Application Support/CLion#{version.major_minor}",
                "~/Library/Caches/CLion#{version.major_minor}",
                "~/Library/Logs/CLion#{version.major_minor}",
              ]
end
