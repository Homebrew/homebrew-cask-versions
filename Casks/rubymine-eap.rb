class RubymineEap < Cask
  version '139.262'
  sha256 'e255b6a0f94fee55e72c9969919619c3431bf6507e678e0ac9303edc0d441072'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :unknown

  app 'RubyMine.app'
end
