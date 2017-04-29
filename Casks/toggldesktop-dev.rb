cask 'toggldesktop-dev' do
  version '7.4.37'
  sha256 '066d22db9d009e480c0c85b9251e1fa3505e49fc9660cb1d7e5bcd62c4cc37cf'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '0c06e586032d3bff493e3f487cd16e673a9eb83fecd2cc488085a1c7c3f51119'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
