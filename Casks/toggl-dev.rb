cask 'toggl-dev' do
  version '7.4.129'
  sha256 '1eb1f0dc3baed9e293040f9e77946c055376339802f967beb1266f8e8bfe22c2'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'cb9d1adb1e94ec516d3b4aba3e26c52ba530ac62f1c5204bf6db6c0941b73f11'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
