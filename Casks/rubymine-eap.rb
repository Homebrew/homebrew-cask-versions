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

  # remove this when this cask is updated to an EAP release
  caveats <<-EOS.undent
    There is currently no EAP preview release. Instead, the latest stable
    version will be installed.
    To receive future EAP releases via the IDE's built-in update system, go to
       Preferences > Appearance & Behavior > System Settings > Updates
    and select the Early Access Program channel.
  EOS
end
