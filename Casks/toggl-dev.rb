cask 'toggl-dev' do
  version '7.4.1080'
  sha256 '13c7595ac506df66cfea52579066254162d97ef91cfebdba1d231d13adeddc0d'

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
