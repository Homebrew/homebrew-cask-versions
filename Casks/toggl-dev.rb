cask 'toggl-dev' do
  version '7.4.161'
  sha256 'aa236d077335b7d36b88e980a6c267d47aabc4ad700649de8f4e0e8804bee6b7'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'd3174c7015550f570106d3d250c0f0d35230ba00e7131cca0d80f7ca8a9acffb'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
