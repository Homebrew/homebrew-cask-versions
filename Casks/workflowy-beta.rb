cask 'workflowy-beta' do
  version '1.1.2-beta.640'
  sha256 '511b1e51a37518f87f7399e7c3b63453d43f69a57976e45328da1f585bed5b1c'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
