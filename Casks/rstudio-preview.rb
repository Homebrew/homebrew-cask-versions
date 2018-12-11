cask 'rstudio-preview' do
  version '1.2.1186'
  sha256 'b51b331eef0b7493df1bba4b9c54f8d74d33323e2967df7c9978672c438191cf'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
