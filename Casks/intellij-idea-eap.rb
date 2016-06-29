cask 'intellij-idea-eap' do
  version '2016.2-162.1120.6'
  sha256 '427c9601a113de3dd90dd50e02ba915b3c1b4216df5fa56fd63a9e997191bc61'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :commercial

  auto_updates true

  app 'IntelliJ IDEA 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
