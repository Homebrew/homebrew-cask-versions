cask 'workflowy-beta' do
  version '1.1.1-beta.543'
  sha256 'cec416ccf403c1f43f1aa08dd3eeef0d0f1dfd4d47259f730e96ef0c07f5616b'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
