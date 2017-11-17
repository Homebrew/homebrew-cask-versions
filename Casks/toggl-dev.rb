cask 'toggl-dev' do
  version '7.4.84'
  sha256 '22ef7b89f9ce04a24621f25e4d1f025c6391ec690ec773b74a244e5f8b425466'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '02fbe1528eef4f4a740ac940a14ade47f4a4846378b22c264bd37212b21332c1'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
