cask 'workflowy-beta' do
  version '1.1.10-beta.2044'
  sha256 '56efa89ed98ed8a9a89877e1eb948bb85b96153aad5b4afabb977dd50babdbf3'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
