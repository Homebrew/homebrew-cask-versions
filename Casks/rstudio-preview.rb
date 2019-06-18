cask 'rstudio-preview' do
  version '1.2.1541'
  sha256 'c675249c037686b9636d4056a77432763ebbb3801138898edd6407b284eb5ca6'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
