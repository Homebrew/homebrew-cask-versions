cask 'rstudio-preview' do
  version '1.2.679'
  sha256 'b3f951ea7205c3af77096cb26089194b760e92df72f46948cce3d3fb2f371bca'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
