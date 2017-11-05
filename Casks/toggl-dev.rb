cask 'toggl-dev' do
  version '7.4.76'
  sha256 '54355cdcb041f8574e8f4698a762130506c400106eeedc864573f7b3424c41a7'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'c79779f0e79b8a023db4495a029dfe099daa4c6eea64d16a765d4f41f16886e3'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
