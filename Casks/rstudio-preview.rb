cask 'rstudio-preview' do
  version '1.2.1015'
  sha256 '56ef6bd4124439146158a4832863c42163979bc39279d8e5393ab5cf7d1761f5'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
