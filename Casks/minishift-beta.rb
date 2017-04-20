cask 'minishift-beta' do
  version '1.0.0-rc.2'
  sha256 'e2570cf193704311d99a4f4e189e8eb115678bc15803b702b9f6228d0da26d08'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '6e296c5520db6de506eae461334bb50b1d9303fe5c8d1998f686fc1340e04f46'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
