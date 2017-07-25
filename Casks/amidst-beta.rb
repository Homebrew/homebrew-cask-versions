cask 'amidst-beta' do
  version '4.3-beta2'
  sha256 'f7aa79aad18fe3ca275390657bf78a5370bd8e2c6d69f496119e3555dc73bc44'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: 'db88f7c138b4e42e7655422cf2854f14c487fd6c1dc3f42fbfa525dfd226fb8a'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
