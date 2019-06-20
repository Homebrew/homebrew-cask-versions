cask 'workflowy-beta' do
  version '1.3.2-beta.4311'
  sha256 '7d89c249a5a662eb874b0ba919d72928bdf26915945e47cbb71fe02f85bf82eb'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
