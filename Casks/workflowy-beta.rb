cask 'workflowy-beta' do
  version '1.1.3-beta.1199'
  sha256 'f28dbe062980e4b26f57fd895b51474d8f024e2acba253d3da718940b8eee4d4'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
