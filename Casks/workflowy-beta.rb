cask 'workflowy-beta' do
  version '1.1.2-beta.995'
  sha256 '80ec0701a954ee73a0a5c4324cf7d629cf08c6afb7252c2b734e68a518b37bd3'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
