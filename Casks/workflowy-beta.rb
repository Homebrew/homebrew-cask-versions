cask 'workflowy-beta' do
  version '1.1.2-beta.678'
  sha256 '3beca85a8a84282b9097a00726e91608e48cbb866b9b0669dae3153a31dedb29'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
