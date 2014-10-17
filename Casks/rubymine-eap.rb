class RubymineEap < Cask
  version '139.106'
  sha256 '40e2543a568c4191bb51ed1b51f4b5264360219ac1d1472820e2b968b4b88924'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'
  license :unknown

  app 'RubyMine EAP.app'
end
