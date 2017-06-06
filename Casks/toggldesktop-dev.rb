cask 'toggldesktop-dev' do
  version '7.4.42'
  sha256 '14430977b771a368f281138fc45b8deec4dfb9780f33ce9c7cf72e2e8f6238c0'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '23dcc17a2673d305bbd9673323f50eac768aca18c0e6f485f6438b12cadffb3e'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
