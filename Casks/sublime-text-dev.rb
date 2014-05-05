class SublimeTextDev < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203062.dmg'
  homepage 'http://www.sublimetext.com/3dev'
  version 'Build 3062'
  sha256 '641459fb786f3db59c0a99b2017c7eec1ccb7a0949764fc417e4c916a8b85264'
  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
