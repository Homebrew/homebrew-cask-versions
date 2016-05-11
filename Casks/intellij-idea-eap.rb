cask 'intellij-idea-eap' do
  version '2016.1.2'
  sha256 '8e104524832891e9eb8c567a404f63038caa1f73e403811440e95f8b63164ecf'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :commercial

  app "IntelliJ IDEA #{version.major_minor} EAP.app"

  zap delete: [
                '~/Library/Preferences/com.jetbrains.intellij.plist',
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
              ]
end
