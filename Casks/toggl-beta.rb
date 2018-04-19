cask 'toggl-beta' do
  version '7.4.140'
  sha256 '7ba2c6b6fb6f604b7c06b62629ffc668d5ea6bf5d44754649bca5758dfd80bda'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'aab463b7ad37f33c3b633088aeb72ed35b6ca5b1e6726112b69ac5b46dddc5a5'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
