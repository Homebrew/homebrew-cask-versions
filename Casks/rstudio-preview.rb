cask 'rstudio-preview' do
  version '1.2.5031'
  sha256 '45d2f45f812d1d51fe457769d098679d8c4f7bfa1cfa81147c3b064cd297d7ac'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
