cask 'toggl-dev' do
  version '7.4.140'
  sha256 '7ba2c6b6fb6f604b7c06b62629ffc668d5ea6bf5d44754649bca5758dfd80bda'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '707a9d834578a9726a34fc51d12be28e6c7fb81f5f3a2c14af171caad6ab7ffe'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
