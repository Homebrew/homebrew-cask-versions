cask 'intellij-idea-eap' do
  version '2016.3.4,163.12024.11'
  sha256 '0b24a485d84a249b79d0e486aadfeeb93495256498e39792289b75f50e488ecf'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
