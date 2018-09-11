cask 'amidst-beta' do
  version '4.3-beta5'
  sha256 '1ad7e7043b619dfcdc2445e87bb8c97d64e47f8f66616d127994700d8046ac73'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
