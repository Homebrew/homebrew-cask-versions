cask 'intellij-idea-ce-eap' do
  version '2016.2.2,162.1628.17'
  sha256 'a481ac3c96e1689b24e01c9bba9ce0d2bb6597d9112c8d1e8cec6f029dc5bc34'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
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
