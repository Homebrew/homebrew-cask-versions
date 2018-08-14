cask 'workflowy-beta' do
  version '1.1.0-beta.510'
  sha256 '64fb12d1ec146a6b5bc3ad524b48a5d40b80539443fe55865232021f72d01436'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
