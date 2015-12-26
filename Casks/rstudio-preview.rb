cask 'rstudio-preview' do
  version :latest
  sha256 :no_check

  # rstudio.org is the official download host per the vendor homepage
  url 'https://www.rstudio.org/download/latest/preview/desktop/mac/RStudio-latest.dmg'
  name 'RStudio'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :affero

  app 'RStudio.app'
  
  zap :delete => '~/.rstudio-desktop'
end
