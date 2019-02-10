cask 'rstudio-preview' do
  version '1.2.1268'
  sha256 '573283341c12be6232c1d5cbae773eec166b4e456545e7359ce2a2ca83aaab11'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
