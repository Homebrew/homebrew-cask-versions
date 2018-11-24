cask 'rstudio-preview' do
  version '1.2.1139'
  sha256 'f52aeb7fac8f14dde6e6eded0cee69a4209bcb6ddd881efdfe85bcfd35b79c55'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
