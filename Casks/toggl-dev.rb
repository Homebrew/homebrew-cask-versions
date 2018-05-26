cask 'toggl-dev' do
  version '7.4.163'
  sha256 '6345f4a1d414f69063b2ee646d08ef0ed24aaf087ebc4b0cd4fc6643eb26e406'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '3bd0ae6acac638073d03f92e5167e15a0a4f0fa17cd31df1dea76f650dbc4a19'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
