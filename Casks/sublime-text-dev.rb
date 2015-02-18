cask :v1 => 'sublime-text-dev' do
  version 'Build 3066'
  sha256 '89916ed41a5de64e7257a5161d529925f3c8e2613a8e2d417111cb72740cac9c'

  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203066.dmg'
  homepage 'http://www.sublimetext.com/3dev'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
