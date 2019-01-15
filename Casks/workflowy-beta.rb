cask 'workflowy-beta' do
  version '1.1.12-beta.2364'
  sha256 '798f42810ee484ba61507526e17451ec0e90f8f80fca3c83b2aa6ed94b273fc2'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
