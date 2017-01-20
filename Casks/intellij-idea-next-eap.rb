cask 'intellij-idea-next-eap' do
  version '2017.1,171.2455.10'
  sha256 '61bed1761d155a6d3297323f2e5aba216389a6daac41702fdcf97b2050fbd1f4'

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
