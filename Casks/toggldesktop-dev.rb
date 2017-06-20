cask 'toggldesktop-dev' do
  version '7.4.52'
  sha256 '9e2be7a2778855b82327f4ea698b7c144ce737514e5dee3d61e6a98d6afc695f'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'bdeb041c8847b363b25e02b6d1d3d50933f73c94d0b263fbbee48769117b65be'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
