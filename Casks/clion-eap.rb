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

  # remove this when this cask is updated to an EAP release
  caveats <<-EOS.undent
    There is currently no EAP preview release. Instead, the latest stable
    version will be installed.
    To receive future EAP releases via the IDE's built-in update system, go to
       Preferences > Appearance & Behavior > System Settings > Updates
    and select the Early Access Program channel.
  EOS
end
