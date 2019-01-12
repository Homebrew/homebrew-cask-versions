cask 'workflowy-beta' do
  version '1.1.12-beta.2344'
  sha256 '9279f0f23e9f33a4e98405d1cb2673d2db5ea31da8ef4af72778c76a83f0be12'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
