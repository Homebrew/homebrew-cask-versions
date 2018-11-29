cask 'rstudio-preview' do
  version '1.2.1153'
  sha256 '3d98f0cda99877c55413a755313eae8cf24a0a051be1927ab5ae2e17b2aab9d6'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
