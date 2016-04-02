cask 'clion-eap' do
  version '2016.1.1'
  sha256 '27982da69f182e5a1aa14579a1d7a5df4b1d44d26e6667e8ae8c52e1efde73f0'

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

  caveats <<-EOS.undent
    Please manually change to the EAP update channel via:
       Preferences > Appearance & Behavior > System Settings > Updates
    EOS
end
