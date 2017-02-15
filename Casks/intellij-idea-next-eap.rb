cask 'intellij-idea-next-eap' do
  version '2017.1,171.3224.1'
  sha256 'c9168e7950d88663213af4c5978b7cce558f1af1e6f86333e02f4f4949894919'

  url "https://download.jetbrains.com/idea/ideaIU-#{version.after_comma}.dmg"
  name 'IntelliJ IDEA Ultimate Next EAP'
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
