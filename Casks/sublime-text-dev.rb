cask :v1 => 'sublime-text-dev' do
  version '3069'
  sha256 '96f0ed890839bc554e8fd26b03c9404218feacb4aefbedc0fac9cdd87799654d'

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
