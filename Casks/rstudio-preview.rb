cask 'rstudio-preview' do
  version '1.3.1019'
  sha256 'b34234934d613c04b719cb9eb8b996992a336d00bf29f16b5b7ad3348c58de62'

  # s3.amazonaws.com/rstudio-ide-build/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
