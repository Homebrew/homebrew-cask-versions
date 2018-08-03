cask 'amidst-beta' do
  version '4.3-beta4'
  sha256 'f6238c6bac873bd64140db5e1cf6490b7fb23e7fbd1d04b272119a5098aec38e'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
