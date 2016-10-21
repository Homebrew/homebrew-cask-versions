cask 'intellij-idea-next-eap' do
  version '2016.3-PublicPreview,163.6512.17'
  sha256 '58404b598830fdb6b2979572327fafa17ea6160dcd99f88d576536172987ef3b'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.before_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} EAP"
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
