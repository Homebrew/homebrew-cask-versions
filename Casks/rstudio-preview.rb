cask 'rstudio-preview' do
  version '1.2.5034'
  sha256 '932c3d0f0cd9cf6f09ad702c16509ae63c324604b25048be4ccbff4125dd904a'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
