cask 'intellij-idea-ce-eap-nextversion' do
  version '2017.1.1,171.4073.17'
  sha256 '26405e7e4755f4387d6707f1f6047497fa3885df1cc1b4d03be82847c73317f1'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Community Edition next version EAP'
  homepage 'https://www.jetbrains.com/idea/whatsnew/'

  auto_updates true

  app 'IntelliJ IDEA #{version.before_comma} CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
              ]
end
