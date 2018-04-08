cask 'amidst-beta' do
  version '4.3-beta3'
  sha256 '0e44d686ba8ca362fced57736b294b9dee507600d9cad3b0cff6771b654d5b26'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: '8d6f763ad70b27e5ac668542232679fee057bc60cd546af3ae4a5526e6e7be42'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
