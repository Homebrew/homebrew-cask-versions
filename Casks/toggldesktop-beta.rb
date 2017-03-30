cask 'toggldesktop-beta' do
  version '7.4.31'
  sha256 '7e543bcc3aa9cb4fa40dfb62162b82d661e6b3419d56cfdf1418312aea98c4ce'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_beta_appcast.xml',
          checkpoint: 'fb9e89f0b331f58d8f61bb41aa5bc546be77e0b299fb2a40f3e1373185feb4a5'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-dev',
                       ]

  app 'TogglDesktop.app'
end
