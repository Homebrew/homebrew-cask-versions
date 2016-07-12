cask 'rubymine-eap' do
  version '162.1236.5'
  sha256 '767e19c4a26ea283859e8837f15fefdd18bcab8175af65babb29776eaef418f9'

  url "https://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  name 'RubyMine EAP'
  homepage 'https://confluence.jetbrains.com/display/RUBYDEV/Early+Access+Program'
  license :commercial

  conflicts_with cask: 'rubymine'

  app 'RubyMine EAP.app'

  uninstall delete: '/usr/local/bin/mine'

  zap delete: [
                '~/Library/Preferences/RubyMine2016.2',
                '~/Library/Application Support/RubyMine2016.2',
                '~/Library/Caches/RubyMine2016.2',
                '~/Library/Logs/RubyMine2016.2',
              ]
end
