cask 'intellij-idea-next-ce-eap' do
  version '2017.1,171.3019.7'
  sha256 '14908b8444ee3f98ef4740e57827787ac45efb48a26791bc258263832538d93f'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Next Community Edition EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} CE EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
              ]
end
