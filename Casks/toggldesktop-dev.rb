cask 'toggldesktop-dev' do
  version '7.4.32'
  sha256 '32eee4a7b143f0c498c07184e07171030f93ebd08fdd0331c1064f7a6caba08c'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '2c4cb072aa601cbb6e7d4c9027748b7f0f4a3ff2c1a56057b1be879ef787dbe4'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
