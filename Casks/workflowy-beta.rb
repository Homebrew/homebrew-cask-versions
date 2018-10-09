cask 'workflowy-beta' do
  version '1.1.3-beta.1222'
  sha256 '25000ede97846264c6c0d701c77759c1073195cc39d0b9119bdcfa6964b09f43'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
