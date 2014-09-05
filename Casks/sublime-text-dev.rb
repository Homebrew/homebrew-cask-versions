class SublimeTextDev < Cask
  version 'Build 3064'
  sha256 '727d14b2ba577c680a2d90645db16f6f736c545820fe90d44cc85ac6808c2f03'

  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203064.dmg'
  homepage 'http://www.sublimetext.com/3dev'

  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
