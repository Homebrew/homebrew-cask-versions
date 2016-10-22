cask 'intellij-idea-next-ce-eap' do
  version '2016.3,163.6512.17'
  sha256 '3200510012a08ff0813100012e09a649b7695fa4f0d16c6c30bd86da76e4d66d'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.before_comma}-PublicPreview.dmg"
  name "IntelliJ IDEA #{version.major_minor} Community Edition EAP"
  name "IntelliJ IDEA #{version.major_minor} CE EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"

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
