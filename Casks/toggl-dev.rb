cask 'toggl-dev' do
  version '7.4.178'
  sha256 '2ca1195163fe4abd916858988e2d0c7688b7651a0b676bad4a33f5c1a2b04a27'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '24531e270a408ec217d024870c03f7854668956ea3676405b8c03522bbe0ed03'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
