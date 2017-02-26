cask 'toggldesktop-dev' do
  version '7.4.24'
  sha256 '7fdb1a308644e3fbdf3d2db52ac7de117a95b9798450220e18dcd88ac97867fe'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '1a8dad2bdfe1e4d0183e0483970d5c53545ca7494cd4310bfbc3fc7031e06c96'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
