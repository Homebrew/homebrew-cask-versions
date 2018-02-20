cask 'toggl-dev' do
  version '7.4.127'
  sha256 '525844e56035038274033e57c4e3f245a508cf833fd329e857b1a2221d859b97'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '7a55c7d00cb8a46b0760311ce8d516a1f025bdab266680cbf082315c2b3ef82b'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
