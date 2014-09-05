class GoogleChromeBeta < Cask
  version 'latest'
  sha256 :no_check

  url 'http://dl.google.com/chrome/mac/beta/googlechrome.dmg'
  homepage 'https://www.google.com/intl/en/chrome/browser/beta.html'

  link 'Google Chrome.app'
end
