cask 'rstudio-preview' do
  version '1.3.1004'
  sha256 '00a5f093840ce75857a253bf1b74c7dc3b367f6a500d2f3fb1d66deb85fa94f4'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
