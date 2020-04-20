cask 'rstudio-preview' do
  version '1.3.944'
  sha256 '3097a0cbc7e702b1ea61562169e6a56ce04a6747e14eefb8116d0066e8148b76'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
