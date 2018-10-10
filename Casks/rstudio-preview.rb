cask 'rstudio-preview' do
  version '1.2.1045'
  sha256 'fa26c367dcef800aa0595e6286e90b2ffb179efb2900d85dcf905c475e943837'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
