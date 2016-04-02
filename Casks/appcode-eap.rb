cask 'appcode-eap' do
  version '2016.1'
  sha256 'dec7447da549f6c2033e6bea8587413888e881f0019a436a711ed07fc42c2b58'

  url "https://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'
  license :commercial

  conflicts_with cask: 'appcode'

  app 'AppCode.app'

  zap delete: [
                "~/.Appcode#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.appcode.*.plist',
                "~/Library/Preferences/AppCode#{version.major_minor}",
                "~/Library/Application Support/AppCode#{version.major_minor}",
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
              ]

  caveats <<-EOS.undent
    Please manually change to the EAP update channel via:
       Preferences > Appearance & Behavior > System Settings > Updates
    EOS
end
