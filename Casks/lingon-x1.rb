cask :v1 => 'lingon-x1' do
  version :latest
  sha256 :no_check

  url 'http://www.peterborgapps.com/downloads/LingonX.zip'
  appcast 'http://www.peterborgapps.com/updates/lingonx-appcast.xml'
  homepage 'http://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'

  depends_on :macos => '>= :mountain_lion'
end
