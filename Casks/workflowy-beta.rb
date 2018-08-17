cask 'workflowy-beta' do
  version '1.1.1-beta.605'
  sha256 '30036444412f0eadc7e3a880fe86298e0823bfe93bbfe5b76cb9268a807f5fd9'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
