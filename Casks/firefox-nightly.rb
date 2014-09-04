class FirefoxNightly < Cask
  version '35.0a1'
  sha256 '57be19b8e36cf675fa9e6adc6e40e91de947a1dccdd585a9ef81f63176a8be6f'
 
  url "https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-trunk/firefox-#{version}.en-US.mac.dmg"
  homepage 'https://www.mozilla.org/en-US/firefox/aurora/'
   
  link 'FirefoxNightly.app'
end
