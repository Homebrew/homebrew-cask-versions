cask 'minishift-beta' do
  version '1.0.0-beta.5'
  sha256 '226ca3ced26a58f12c64cfa48ae100cc405527f261678ddf3ccd034eb1fe767a'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '07a9028acc486a2aae16f422f3d98fdd624ef091690e2e35fa28e1d869117a95'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
