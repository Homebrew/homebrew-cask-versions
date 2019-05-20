cask 'rstudio-preview' do
  version '1.2.1522'
  sha256 '5f998412b3718abcb97dfb824c8f1ebeddb2207cbb55aa2d3c61cb7cc2682dc3'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
