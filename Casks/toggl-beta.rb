cask 'toggl-beta' do
  version '7.4.129'
  sha256 '1eb1f0dc3baed9e293040f9e77946c055376339802f967beb1266f8e8bfe22c2'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: '3966ec4cc86a430fec8d9bcce3bbf3890b20ec90db238151062793e56b8d4457'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
