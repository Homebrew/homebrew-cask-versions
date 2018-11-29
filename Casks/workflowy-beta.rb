cask 'workflowy-beta' do
  version '1.1.9-beta.1954'
  sha256 '110c2480e4741b61ff09829a10b0f3c948f177b3f651115588ea05320f1aa23f'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
