cask 'rstudio-preview' do
  version '1.3.903'
  sha256 'bf73509c9d3bd7e8be09c0218e28239359c33e645c90be88f423089fd0f5a6ae'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
