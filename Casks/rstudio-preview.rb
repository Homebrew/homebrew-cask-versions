cask 'rstudio-preview' do
  version '1.2.1070'
  sha256 'f6c8ad5103eaeec072134e3ac4db9578a30da587d9a6a6817e2986f66239d031'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
