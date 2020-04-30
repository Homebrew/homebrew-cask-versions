cask 'rstudio-preview' do
  version '1.3.952'
  sha256 '7f56cb1ef6493b47fce1c3696254a6dbacbeacff104b5ca93bc622253cc7765e'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
