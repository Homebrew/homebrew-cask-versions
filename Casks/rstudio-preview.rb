cask 'rstudio-preview' do
  version '1.2.1335'
  sha256 '9633421e4c8fd8a439fcf54be495c489734b12900c5ffc378fb2fecc6e1bff51'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
