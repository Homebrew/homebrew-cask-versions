cask 'workflowy-beta' do
  version '1.0.20-beta.391'
  sha256 'a9c280fe3fc71c2d9932c5aa502c7fa6a99e28f008f7571d0151ede436592def'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
