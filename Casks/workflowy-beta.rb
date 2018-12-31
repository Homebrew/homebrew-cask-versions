cask 'workflowy-beta' do
  version '1.1.11-beta.2177'
  sha256 'faadd8a7fa55560dac1ba0267f2424bbcf85b05d51fda8cfcae35f8c69fb7a72'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
