cask 'intellij-idea-eap' do
  version '2016.3.5,163.13906.18'
  sha256 '4417df3aa9fba7c75af371b51d734759b2d555930404b2063866b4e869ae3b79'

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
