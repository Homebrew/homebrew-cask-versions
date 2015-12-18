cask 'transmit3' do
  version '3.7'
  sha256 '311f4d0f559c966fe7e5a4a6e0327dfa7a4c06a9c942ec11d58e6ed210f4b689'

  url "http://panic.com/museum/transmit/Transmit%20#{version}.zip"
  name 'Transmit'
  homepage 'https://www.panic.com/transmit'
  license :commercial

  app 'Transmit.app'

  zap :delete => [
                  '~/Library/Preferences/com.panic.Transmit.plist',
                  '~/Library/Application Support/Transmit',
                 ]
end
