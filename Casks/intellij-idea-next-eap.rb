cask 'intellij-idea-next-eap' do
  version '2016.3,163.5644.15'
  sha256 '947d86a1b766f2a1829ddaf960dcb5df5ee065c35df36387680a659851011d9b'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name "IntelliJ IDEA #{version.major_minor} EAP"
  homepage "https://confluence.jetbrains.com/display/IDEADEV/IDEA+#{version.major_minor}+EAP"
  license :commercial

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
