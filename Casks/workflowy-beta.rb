cask 'workflowy-beta' do
  version '1.1.2-beta.713'
  sha256 '1653de090a800f12f5f290bbc3916f2115ff3ded4b2ec6580e642bd4358825be'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
