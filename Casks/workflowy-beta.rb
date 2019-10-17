cask 'workflowy-beta' do
  version '1.3.5-beta.4649'
  sha256 'bee83d700efdd79937f976912692fd06f7dccd5cc23a5399bcf4d8d3f8dfec61'

  # github.com/workflowy/desktop-beta was verified as official when first introduced to the cask
  url "https://github.com/workflowy/desktop-beta/releases/download/v#{version}/WorkFlowy-Beta.dmg"
  appcast 'https://github.com/workflowy/desktop-beta/releases.atom'
  name 'WorkFlowy'
  homepage 'https://beta.workflowy.com/downloads/mac/'

  app 'WorkFlowy Beta.app'
end
