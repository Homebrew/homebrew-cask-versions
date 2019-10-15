cask 'workflowy-beta' do
  version '1.3.4-beta.4612'
  sha256 'fb3e939f2d2ab5dfc646bc512b3c2b32ce5c0fe800de929e44080973859325b5'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
