cask 'intellij-idea-eap' do
  version '2016.2-162.917.19'
  sha256 'd9db67c434e81a262e2443ed020155766869a163e27ab792d86252467bbd112f'

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
