cask 'intellij-idea-next-eap' do
  version '2016.3,163.3094.26'
  sha256 '781c04045250bd694e1d75803c983b8a9d39d6c355ed84770e0b813e8efdabb8'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"
  license :commercial

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
