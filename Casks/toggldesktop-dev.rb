cask 'toggldesktop-dev' do
  version '7.4.54'
  sha256 'cecfa7ba7f3a1d71e3489f97d177a3e109e06ac55a878a890a5f91025a6c29ee'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '36231e534b91f876d3bf87c4627a55eb3ee839675506a28b374a9e70dac335d7'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
