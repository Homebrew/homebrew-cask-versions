cask 'intellij-idea-ce-eap' do
  version '2016.1.2'
  sha256 'f5cf4c7574e4001f08ff8132dd2ec3ef6d3348b98b280b24b2f533a999cceaef'

  url "https://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://confluence.jetbrains.com/display/IDEADEV/IDEA+2016.1+EAP'
  license :apache

  app 'IntelliJ IDEA CE.app'

  zap delete: [
                "~/Library/Application Support/IdeaIC#{version.major_minor}",
                "~/Library/Caches/IdeaIC#{version.major_minor}",
                "~/Library/Logs/IdeaIC#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.intellij.ce.plist',
                "~/Library/Preferences/IdeaIC#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.intellij.ce.savedState',
              ]

  # remove this when this cask is updated to an EAP release
  caveats <<-EOS.undent
    There is currently no EAP preview release. Instead, the latest stable
    version will be installed.
    To receive future EAP releases via the IDE's built-in update system, go to
       Preferences > Appearance & Behavior > System Settings > Updates
    and select the Early Access Program channel.
  EOS
end
