class SublimeText3 < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203065.dmg'
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml'
  homepage 'http://www.sublimetext.com/3'
  version 'Build 3065'
  sha256 '373dbfcddab7fb288351763402361cd4045f4a9510eb32f81938d0c156d161c3'
  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  caveats do
    files_in_usr_local
  end
end
