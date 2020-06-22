cask 'rstudio-preview' do
  version '1.3.1039'
  sha256 '0fa83fc028c1aa7fa56185346d6582f52c9026e75b092af50db8734467f940ed'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
