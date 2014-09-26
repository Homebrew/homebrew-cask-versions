class RubymineEap < Cask
  version '138.1968'
  sha256 'ffefa3d5a547909fcd6b76f1a1172771fe28072c79b1d2a6fe180330a64af467'

  url "http://download.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://confluence.jetbrains.com/display/RUBYDEV/RubyMine+EAP'

  app 'RubyMine EAP.app'
end
