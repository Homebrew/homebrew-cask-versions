cask 'toggl-dev' do
  version '7.4.124'
  sha256 '2066f173a2e5899c39447a3c79ad4790021a162a58a76c30ea3db0ae03519bb5'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '4145d3abde3b84d5a5eb6367418d02ad6993bf94cc876bacd3408c252f9e0d83'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
