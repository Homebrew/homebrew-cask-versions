cask :v1 => 'daisydisk-beta' do

  version :latest
  sha256 :no_check
  url 'http://daisydiskapp.com/downloads/DaisyDiskBeta.zip'

  appcast 'http://www.daisydiskapp.com/downloads/appcastFeed.php'
  name 'DaisyDisk'
  homepage 'http://www.daisydiskapp.com'
  license :freemium

  app 'DaisyDisk.app'

  depends_on :macos => :yosemite
  conflicts_with :cask => 'daisydisk'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Preferences/com.daisydiskapp.DaisyDiskStandAlone.plist',
                  '~/Library/Caches/com.daisydiskapp.DaisyDiskStandAlone',
                 ]
end
