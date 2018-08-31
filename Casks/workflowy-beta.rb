cask 'workflowy-beta' do
  version '1.1.2-beta.751'
  sha256 '3ca371cea2dac7b4461ec5f1da85f60f7f929b3a5026e906e56e589991af3cd4'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
