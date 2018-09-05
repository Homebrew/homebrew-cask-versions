cask 'workflowy-beta' do
  version '1.1.2-beta.812'
  sha256 'd2aa065a73fdc77154fb6b2844e279f2a2fb7035dbb1da9b0bda929a60f299ce'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
