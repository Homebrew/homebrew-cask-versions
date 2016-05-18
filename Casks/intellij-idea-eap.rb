cask 'intellij-idea-eap' do
  version '162.74.16'
  sha256 'ef71c2da569fb952c62a6f0986cb11a850dec987e227f8a8506df4a016d61bf9'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :commercial

  app 'IntelliJ IDEA.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/.IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.intellij.*.plist',
              ]
end
