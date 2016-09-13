cask 'intellij-idea-next-ce-eap' do
  version '2016.3,163.4396.1'
  sha256 '71965ef434658b230a95270cc87803a36d5bf91fd10af59e0a017819a16fb9ed'

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
