cask 'rstudio-preview' do
  version '1.2.1280'
  sha256 'a90bb137338b4183437001212983bfbda0ecdf45b4ca37fde125399f55be3e53'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
