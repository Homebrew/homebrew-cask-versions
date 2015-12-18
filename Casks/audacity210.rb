cask 'audacity210' do
  version '2.1.0'
  sha256 '0485ab70a86ab6d500b9365b24d279f10971b9260f0b537142b48832f8f84389'

  # oldfoss.com is the official download host per the vendor homepage
  url "http://www.oldfoss.com/Audacity/download/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacityteam.org'
  license :gpl

  app 'Audacity/Audacity.app'
end
