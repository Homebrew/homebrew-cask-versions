cask 'toggldesktop-dev' do
  version '7.4.71'
  sha256 'bfab01fe4f09017828d0c69bd3e4f11efc96abb417e1a1a766b92a218452f44a'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '9cf3edf97ff8c09f9eefe03d6b2de8c148701f5c37a6b51c22d329c9153b191c'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
