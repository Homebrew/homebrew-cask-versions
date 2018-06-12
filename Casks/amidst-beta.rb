cask 'amidst-beta' do
  version '4.3-beta3'
  sha256 '0e44d686ba8ca362fced57736b294b9dee507600d9cad3b0cff6771b654d5b26'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
