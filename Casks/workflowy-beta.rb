cask 'workflowy-beta' do
  version '1.0.20-beta.403'
  sha256 'd2913f8ac1c8d21dfc1a1b227c14bdd1b23aecdadf01a58af366ef6bb0abe7c9'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
