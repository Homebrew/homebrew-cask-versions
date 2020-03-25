cask 'rstudio-preview' do
  version '1.3.926'
  sha256 'eaf6f5515d4b78021505fee6d4f91553d361edcc66e8942739a9c936504d6f9b'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
