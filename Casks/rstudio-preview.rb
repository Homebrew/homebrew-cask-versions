cask 'rstudio-preview' do
  version '1.2.1030'
  sha256 '95b128cc2758b7bd0cd79878509419f98b488f2d108eb7d161703bc4aa80e355'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
