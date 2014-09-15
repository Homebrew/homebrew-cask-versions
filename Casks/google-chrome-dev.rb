class GoogleChromeDev < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dl.google.com/chrome/mac/dev/googlechrome.dmg'
  homepage 'https://www.google.com/chrome/'

  app 'Google Chrome.app'
end
