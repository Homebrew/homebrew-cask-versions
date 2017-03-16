cask 'intellij-idea-next-eap' do
  version '2017.1,171.3780.52'
  sha256 '699ff2dfe76e6b13de19246ccc1746f14fd512ef731ea535ecd60369364798a3'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Ultimate next version EAP'
  homepage 'https://www.jetbrains.com/idea/nextversion/'

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
