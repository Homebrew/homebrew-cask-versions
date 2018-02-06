cask 'toggl-dev' do
  version '7.4.118'
  sha256 '4e7a4d15e20579279e803091610e95cfcf6388f91ef59801f80f09fb7ac2bbf8'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '41503327ef3b7fb4c0fa9f92dac5c61f5b3a31a9b949438ca408e3c787c1c615'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
