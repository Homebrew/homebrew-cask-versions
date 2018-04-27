cask 'toggl-dev' do
  version '7.4.144'
  sha256 '7bac63b5d2ef6e3fc96d3b712995637bc00b0bc2c0bbaaf68906aae6a6b1a999'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '5919eabf10691ffd9f4475694514ba01dbbbf0c2a46d82e90f01c1fc07aa1554'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
