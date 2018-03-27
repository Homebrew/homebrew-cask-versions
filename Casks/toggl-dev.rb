cask 'toggl-dev' do
  version '7.4.137'
  sha256 '8d09be909d328d9b4d122ce35619aa12cef4ebdc9c6d523ba4be0d22e0c4c7e1'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'fb37d58dd1a0559518cec1708daeb32611d33afe9f0740e80ac286052af0514b'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
