cask 'lingon-x1' do
  version :latest
  sha256 :no_check

  url 'https://www.peterborgapps.com/downloads/LingonX.zip'
  appcast 'https://www.peterborgapps.com/updates/lingonx-appcast.xml',
          :sha256 => 'a509f4c6a8596bd10c90f4d750ab2c81098360f82eac7a3744066c23becf4972'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'

  depends_on :macos => '>= :mountain_lion'
end
