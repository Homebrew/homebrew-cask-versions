cask 'workflowy-beta' do
  version '1.1.1-beta.632'
  sha256 '22b15a9cd2397b3d38b56fd53968b6019d21cb6823d15631707b78055368e3b6'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
