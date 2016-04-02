cask 'rubymine-eap' do
  version '2016.1'
  sha256 'c587ec3e282802c93be5826be79fddb003a6842b861f5c9a885c6c0c9638106d'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine.app'

  zap delete: [
                "~/.RubyMine#{version.major_minor}",
                # TODO: expand/glob for '~/Library/Preferences/jetbrains.rubymine.*.plist',
                "~/Library/Preferences/RubyMine#{version.major_minor}",
                "~/Library/Application Support/RubyMine#{version.major_minor}",
                "~/Library/Caches/RubyMine#{version.major_minor}",
                "~/Library/Logs/RubyMine#{version.major_minor}",
              ]

  caveats <<-EOS.undent
    Please manually change to the EAP update channel via:
       Preferences > Appearance & Behavior > System Settings > Updates
    EOS
end
