cask 'intellij-idea-next-ce-eap' do
  version '2017.1,171.2272.14'
  sha256 'c46f70cae677391d48b0c74123e80de70424607b598aeed136fb24754524d636'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Next Community Edition EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} CE EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
