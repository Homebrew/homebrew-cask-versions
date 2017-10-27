cask 'toggl-dev' do
  version '7.4.73'
  sha256 '2c99c2913f3b262f98ddfbb34efa0ccbc898248e40af79164b27d0a8a2bacc7b'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'e620a7a0bc666e85abd3bf27d090fd4f848c1b7ec2c0a796b677e0608d7c4f0f'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
