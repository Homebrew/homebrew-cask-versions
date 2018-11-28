cask 'workflowy-beta' do
  version '1.1.9-beta.1936'
  sha256 '4f4da49077c9f2e3d70fefca6b9580d063a2a628c6be7d8986bdd5c213e40527'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
