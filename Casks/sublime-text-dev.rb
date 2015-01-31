cask :v1 => 'sublime-text-dev' do
  version 'Build 3067'
  sha256 '19fea5cc5dad89a31f1b751bb7c358ffd7acdc4bc7b8c5b957631743a523a261'

  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203067.dmg'
  homepage 'http://www.sublimetext.com/3dev'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
