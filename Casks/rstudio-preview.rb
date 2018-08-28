cask 'rstudio-preview' do
  version '1.2.907'
  sha256 '2f251cb073b571ce42d7b368aa04285a207c2407c3861f00d544743a8c245bd0'

  # s3.amazonaws.com/rstudio-ide-build was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/rstudio-ide-build/desktop/macos/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/products/rstudio/download/preview/'

  app 'RStudio.app'

  zap trash: '~/.rstudio-desktop'
end
