cask 'workflowy-beta' do
  version '1.0.20-beta.314'
  sha256 'd24a1cb0b61dec155f3ad3eb73f91ec91db75c762c4827613d661cc447bdc0ef'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy-Beta'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
