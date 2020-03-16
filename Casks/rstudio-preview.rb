cask 'rstudio-preview' do
  version '1.3.911'
  sha256 'c2bd3ed7f3709ab79f14052814d1221212edfb882386367bb72f30702f0f0344'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
