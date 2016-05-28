cask 'intellij-idea-eap' do
  version '162.426.1'
  sha256 '0a0d22076e80b02c8113d8b407896e7316920e7924ba1301f8db37ec5fc03c79'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :commercial

  conflicts_with cask: 'intellij-idea'

  app 'IntelliJ IDEA 2016.2 EAP.app'

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
