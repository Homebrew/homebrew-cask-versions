cask 'rstudio-preview' do
  version '1.2.1237'
  sha256 'ebb0624ce7fd7302fcdb7cea922a659cba35d74d40d5c62f5d560e7ddff232f7'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
