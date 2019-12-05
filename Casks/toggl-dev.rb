cask 'toggl-dev' do
  version '7.4.1064'
  sha256 '2392342a759d5405dd65162df04a44cf127367911481c1b85678248cd4125f35'

  # github.com/toggl-open-source/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl-open-source/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
