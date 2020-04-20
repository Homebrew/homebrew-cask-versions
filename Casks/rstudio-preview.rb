cask 'rstudio-preview' do
  version '1.3.938'
  sha256 '78e79a510d4e2481c5b34f357da9515ab64328cc6564c02772e8a8a7029b6ea1'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
