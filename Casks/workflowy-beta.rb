cask 'workflowy-beta' do
  version '1.1.5-beta.1362'
  sha256 '135a498279b1bbed06b6de1192c4f8f3cbf9b7f339e8fa5319fdf6db26392416'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
