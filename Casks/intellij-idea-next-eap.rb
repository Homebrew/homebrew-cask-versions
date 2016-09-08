cask 'intellij-idea-next-eap' do
  version '2016.3,163.3983.4'
  sha256 '53fb96b24fd1e8add14c84612e975dadc40729deb0b38fb4697e4b245c9130d7'

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
