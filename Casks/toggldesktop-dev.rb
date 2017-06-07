cask 'toggldesktop-dev' do
  version '7.4.45'
  sha256 '2ef6cbc8c949a1c537290f38f907d81361b7f482524a67b697f166f08b2cdbdf'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'c28ebe982dc9c99407153abb25a3a665e007ace1b4ed75e5181e3ff4d3d6cd31'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
