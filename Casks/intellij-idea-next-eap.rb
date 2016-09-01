cask 'intellij-idea-next-eap' do
  version '2016.3,163.3512.7'
  sha256 '224083216751e8b96cdcb156434d2caad89c2ee33012da89dccb079b53a0235c'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"
  license :commercial

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
