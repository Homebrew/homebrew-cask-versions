cask 'intellij-idea-next-eap' do
  version '2016.3,163.4830.24'
  sha256 '33572f3931ffebced74140fa9e337e512815f20578f2b6e08a6eb06fff3c9894'

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
