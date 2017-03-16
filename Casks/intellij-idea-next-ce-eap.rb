cask 'intellij-idea-next-ce-eap' do
  version '2017.1,171.3780.52'
  sha256 '360b6703e1d57893f957d4a63b51bd91cecd46c12808eb207ba4a11e5e7f0211'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Community Edition next version EAP'
  homepage 'https://www.jetbrains.com/idea/nextversion/'

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
              ]
end
