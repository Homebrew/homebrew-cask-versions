cask 'intellij-idea-next-ce-eap' do
  version '2016.3,163.7743.17'
  sha256 'b3bb048d00c4a1f8a4e1e2d2f601be30f4a031752be4048fc71d07d802970440'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} Community Edition EAP"
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
