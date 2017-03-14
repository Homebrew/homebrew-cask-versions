cask 'intellij-idea-ce-eap' do
  version '2016.3.5,163.13906.18'
  sha256 '4b7a52afdd1fd8be6ea5a0116d23d8bbaf1d90337a78c4bbb8e24b0af19fbd57'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app 'IntelliJ IDEA CE.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
