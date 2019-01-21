cask 'workflowy-beta' do
  version '1.1.14-beta.2474'
  sha256 'a218c2d8b5ac4146886e4856f31b8489c0b25693be524581253ef1d2b4f7c696'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
