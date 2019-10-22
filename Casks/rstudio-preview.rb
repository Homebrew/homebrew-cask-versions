cask 'rstudio-preview' do
  version '1.2.5013'
  sha256 'c1f96a4e61af4b33e1a15146c8ef4d2fc4b16e9c6bd04492406055809732f912'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
