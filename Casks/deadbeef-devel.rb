cask 'deadbeef-devel' do
  version :latest
  sha256 :no_check

  # downloads.sourceforge.net/deadbeef was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/deadbeef/travis/osx/master/deadbeef-devel-osx-x86_64.zip'
  name 'DeaDBeeF'
  homepage 'https://deadbeef.sourceforge.io/'

  app 'deadbeef.app'

  zap trash: [
               '~/Library/Preferences/com.deadbeef.deadbeef.plist',
               '~/Library/Preferences/deadbeef',
               '~/Library/Saved Application State/com.deadbeef.deadbeef.savedState',
             ]
end
