cask 'intellij-idea-next-ce-eap' do
  version '2017.1,171.3224.1'
  sha256 'dd0afa9d384285aeab1728e705535bec3aa01ef9147c5f25967bb29e450e9770'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Community Edition Next EAP'
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
