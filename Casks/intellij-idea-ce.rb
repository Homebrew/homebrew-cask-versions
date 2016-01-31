cask 'intellij-idea-ce' do
  version '15.0.3'
  sha256 'ac1e22a512c40809373a0b896b2fa794a7d62563cba84984a8fd558561fdbcb2'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}-custom-jdk-bundled.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 15 CE.app'

  zap delete: [
                '~/Library/Application Support/IdeaIC15',
                '~/Library/Preferences/IdeaIC15',
                '~/Library/Caches/IdeaIC15',
                '~/Library/Logs/IdeaIC15',
              ]
end
