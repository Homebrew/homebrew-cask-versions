cask 'workflowy-beta' do
  version '1.1.11-beta.2138'
  sha256 'f569b3087c204765b429b6371121035bc3ce2be89a7dcf77c00ad71a64e6d060'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
