cask :v1 => 'rstudio-preview' do
  version :latest
  sha256 :no_check

  url 'http://www.rstudio.org/download/latest/preview/desktop/mac/RStudio-latest.dmg'
  homepage 'http://www.rstudio.com/ide/download/preview'
  license :unknown

  app 'RStudio.app'
end
