cask 'intellij-idea-eap' do
  version '2016.3.6,163.15188.11'
  sha256 '69a7af4773d03927cac5b3427e09dee7a3cae46bf3b7e57e7abbe6d6fe6f72ea'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  name 'IntelliJ IDEA Ultimate EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app 'IntelliJ IDEA.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
