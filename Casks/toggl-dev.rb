cask 'toggl-dev' do
  version '7.4.139'
  sha256 '0eb9fec43fa4343de06c7cb6c57a7c9e3d29a75cbd010227db600d6c39231f71'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'aacbc94e945695f693fcd7ee1bdf1d3878e74c22b4e8205f906d91dd80a6173b'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
