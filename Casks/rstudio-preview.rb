cask 'rstudio-preview' do
  version '1.3.959'
  sha256 '7c5b695dfd68f236186c9d4a4b87426868dce753fde3d2783abecfe956e780f3'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
