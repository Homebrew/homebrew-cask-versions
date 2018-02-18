cask 'toggl-beta' do
  version '7.4.122'
  sha256 'f22d8cc92b0e5546e0b2bd47ee00fb6f92469553b7155e05db91336da7e56987'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'bcba302dde3b18f09de12b829c801637bbe3764662f3879a41649bd2c5e24aad'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-dev',
                       ]

  app 'TogglDesktop.app'
end
