cask :v1 => 'sublime-text-dev' do
  version '3070'
  sha256 'b398456b1ea72a1ae10da6d687612698056ffb76a6e534faa50c90a6a98ecf0c'

  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  name 'Sublime Text'
  homepage 'http://www.sublimetext.com/3dev'
  license :closed

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
