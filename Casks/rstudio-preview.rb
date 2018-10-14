cask 'rstudio-preview' do
  version '1.2.1047'
  sha256 '128be3bd0a93bf7d8265bf9d56252d3b85e47ae0d65402b3663acf91955fbe11'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
