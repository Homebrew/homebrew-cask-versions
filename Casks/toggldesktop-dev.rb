cask 'toggldesktop-dev' do
  version '7.4.34'
  sha256 'b4bef01482451187055bb4dac6ef43819472ae9c1c3db919884ea7b020d7f3b2'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '877751184fd096a267c1355346d32bb004fc5139341149d0708794ec8869b129'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
