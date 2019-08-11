cask 'rstudio-preview' do
  version '1.2.1555'
  sha256 'b7d5da73bae20b67b7d9535e8f8b8551f17ac18aba933032ee4a5dcf91744f0c'

  # rstudio-ide-build.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://rstudio-ide-build.s3.amazonaws.com/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
