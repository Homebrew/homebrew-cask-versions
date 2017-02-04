cask 'intellij-idea-next-eap' do
  version '2017.1,171.2822.15'
  sha256 'c75ba3ae8af268d0fd9b0e78a176dc5d6fddd0543f238ffc0d8911b55051f795'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Next EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
