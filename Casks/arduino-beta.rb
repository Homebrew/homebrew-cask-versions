cask :v1 => 'arduino-beta' do
  version '1.5.8'
  sha256 'f5678cf9146031af52519d79dfcb16a81aa9c7eb68e516b34c679139048fb000'

  url 'http://arduino.cc/download.php?f=/arduino-1.5.8-macosx-java7.zip'
  homepage 'http://arduino.cc/'
  license :unknown

  app 'Arduino.app'
end
