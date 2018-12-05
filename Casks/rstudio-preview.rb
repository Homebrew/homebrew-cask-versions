cask 'rstudio-preview' do
  version '1.2.1163'
  sha256 '717901c694e0d08a4b5007ce36f001afd9d88afb66fa10db4e9e1f9514bf5021'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
