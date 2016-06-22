cask 'intellij-idea-eap' do
  version '2016.2-162.1024.1'
  sha256 '68e5969c8bd58f5afd0a1658154f8721f59c75671aa8829805e8af62c09ee24f'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :commercial

  app 'IntelliJ IDEA 2016.2 EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
