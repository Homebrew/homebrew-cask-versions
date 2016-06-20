cask 'intellij-idea-ce-eap' do
  version '2016.2-162.917.19'
  sha256 '97c199d530ee8c09904926b162b29c93761c74a1e379448bb876547530f3c98f'

  url "https://download.jetbrains.com/idea/ideaIC-#{version.sub(%r{.*?-}, '')}.dmg"
  name 'IntelliJ IDEA Community Edition EAP'
  name 'IntelliJ IDEA CE EAP'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.2+EAP'
  license :apache

  app 'IntelliJ IDEA 2016.2 CE EAP.app'

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
              ]
end
