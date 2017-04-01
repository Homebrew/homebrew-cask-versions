cask 'intellij-idea-eap-nextversion' do
  version '2017.1.1,171.4073.17'
  sha256 'cfed9056b542f33c3685fe9886e87b2977661fe10939a8521a555516739c76ca'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Ultimate next version EAP'
  homepage 'https://www.jetbrains.com/idea/whatsnew/'

  auto_updates true

  app "IntelliJ IDEA #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/idea'

  zap delete: [
                "~/Library/Application Support/IntelliJIdea#{version.major_minor}",
                "~/Library/Caches/IntelliJIdea#{version.major_minor}",
                "~/Library/Logs/IntelliJIdea#{version.major_minor}",
                "~/Library/Preferences/IntelliJIdea#{version.major_minor}",
              ]
end
