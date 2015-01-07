cask :v1 => 'screenflow4' do
  version '4.5.4'
  sha256 'e6f142e5fdc30556ec01d7973b194927cbdcda341d9d673b30fff9ad6d12b790'

  url "http://www.telestream.net/download-files/screenflow/4-5/ScreenFlow-#{version}.dmg"
  homepage 'http://www.telestream.net/screenflow/'
  license :commercial

  app 'ScreenFlow.app'
end
