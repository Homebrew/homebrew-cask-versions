cask 'toggldesktop-dev' do
  version '7.4.31'
  sha256 '7e543bcc3aa9cb4fa40dfb62162b82d661e6b3419d56cfdf1418312aea98c4ce'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '6d8f85663c821c8ce0516ab40e58729fa5354a2c59e06307a5935c15f1e77181'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
