cask 'workflowy-beta' do
  version '1.1.11-beta.2255'
  sha256 'b057a0f6f670bb078b55717dba908f6e467c9eb7e02cd3f7c7402778c61f40b6'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
