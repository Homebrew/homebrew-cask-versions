cask 'intellij-idea-next-ce-eap' do
  version '2017.1,171.3691.12'
  sha256 '7a6490cbfccc5fd33cc18b8fda2a53170e2e8b04fc19e746bd3527284e379653'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Community Edition next version EAP'
  homepage 'https://www.jetbrains.com/idea/nextversion/'

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
