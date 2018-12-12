cask 'workflowy-beta' do
  version '1.1.10-beta.2091'
  sha256 '0c35fb41bca4a6dc14b34729e229b7b571acef77d2f6a6822957e03f000f5e6f'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
