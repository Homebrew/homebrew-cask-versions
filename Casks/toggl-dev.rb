cask 'toggl-dev' do
  version '7.4.123'
  sha256 'db10b8e16c4d24337d3a6dd59b8b9be48dc32de1dc232ec7d08aba1182a68122'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '2f80345ffeefd8a915f9d6b1a783e55f750673d6afb02f7d374965e67371f08a'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
