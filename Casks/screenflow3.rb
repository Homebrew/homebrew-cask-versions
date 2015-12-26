cask 'screenflow3' do
  version '3.0'
  sha256 '88e72cc2a07fdb93aa6d20e7ea81ba7c3536a1ab325f6a92316a81ddf6e3dcf2'

  url "https://www.telestream.net/download-files/screenflow/3-0/ScreenFlow-#{version}.dmg"
  homepage 'https://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'
end
