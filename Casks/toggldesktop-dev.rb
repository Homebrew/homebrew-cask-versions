cask 'toggldesktop-dev' do
  version '7.4.50'
  sha256 'b1bc5622b46370c4b55823578d606476edb99b60ab1ace9085a826271dfc6f81'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '25e8f431647e37433ee3ad04e22177cb5482444533d0258aeb41c6f3607491aa'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
