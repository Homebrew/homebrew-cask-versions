class SublimeTextDevRicon < Cask
  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203061.dmg'
  homepage 'http://www.sublimetext.com/3dev'
  version 'build3061'
  sha1 'd91f29b38de0411f96e9c0c7da66b0527cb251fb'
  link 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
  after_install do
    ohai "Replacing icon..."
    system "curl --silent -L http://cl.ly/0v3X432S2I0l/Icon%20light.icns -o " + destination_path.join('Sublime\ Text.icns').to_s
    # backup original icon file
    system 'mv ' + destination_path.join('Sublime\ Text.app/Contents/Resources/Sublime\ Text.icns') + ' ' + destination_path.join('Sublime\ Text.app/Contents/Resources/Sublime\ Text.icns_bak')
    system 'mv ' + destination_path.join('Sublime\ Text.icns').to_s + ' ' +destination_path.join('Sublime\ Text.app/Contents/Resources/')
  end
end
