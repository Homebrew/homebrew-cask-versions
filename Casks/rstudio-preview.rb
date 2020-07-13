cask 'rstudio-preview' do
  version '1.3.1056'
  sha256 'f343c77da23e642bc2a3be7263b3f719571d586285c91e8822e0b9276dbd25d1'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
