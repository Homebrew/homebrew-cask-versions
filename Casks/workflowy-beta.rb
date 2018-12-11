cask 'workflowy-beta' do
  version '1.1.10-beta.2064'
  sha256 '2c1a4a4ab3f2ebc662d7e88d9bcbf88436f4aee6f9641ab5ea45cb8f811c1dc9'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
