cask 'intellij-idea-next-ce-eap' do
  version '2016.3,163.5219.11'
  sha256 'e1a62a3edbcac6017e96aaa99a392f29849bc5e76f322340dfff2cc4a8f9e7b6'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} Community Edition EAP"
  name "IntelliJ IDEA #{version.major_minor} CE EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"
  license :apache

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
