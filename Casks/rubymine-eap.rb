cask :v1 => 'rubymine-eap' do
  version '140.2694'
  sha256 '7376d5b04b49e503c203a2b1c9034a690835ea601847753710f3c8ec53566ebb'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :unknown

  app 'RubyMine EAP.app'
end
