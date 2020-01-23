cask 'rstudio-preview' do
  version '1.2.5036'
  sha256 'b6632c07063aa0d998ef879f838ea99b36d24c98f477ce2f3f605d121149cdc3'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
