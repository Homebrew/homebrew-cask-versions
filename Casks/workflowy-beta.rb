cask 'workflowy-beta' do
  version '1.2.11-beta.3596'
  sha256 '4c5e264da3d8ce6da3f06f474654e3ea8c732d52ac6b66478a8b3c9ef58ab17f'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
