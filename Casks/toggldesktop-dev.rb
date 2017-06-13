cask 'toggldesktop-dev' do
  version '7.4.46'
  sha256 '3e5fbe9fd08c05bd65b045f72d1de6b6dccd227fd0912b974f1cb10b965d6098'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'e5703d50d9fde16d9c557b109217663de763995e71d907cae3c65dd38e9347a9'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
