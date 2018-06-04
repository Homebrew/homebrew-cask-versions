cask 'toggl-dev' do
  version '7.4.179'
  sha256 'e57095b9a7305ac80b3fdf3c8360a09326d1ea291dfa3979156f93dd47530aa0'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'f382bcc1c83e808a0df38104a8626c6ffcde1de3101e8130dbba3e713e79187c'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
