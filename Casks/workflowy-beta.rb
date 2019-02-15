cask 'workflowy-beta' do
  version '1.2.2-beta.2845'
  sha256 '45304fe23a2e66f8242fe3d704d87ef8b933304ce9104db206d8a0f688b6f14e'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
