cask 'minishift-unstable' do
  version '1.0.0-beta.1'
  sha256 '2d4020615bd86b814c678fedbf6072488101c26298a90fb081904c6913d88497'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom', checkpoint: 'f78e6fe63a0e0f8f3cae4f97daebe8528e8a38a7d023c6630598b128ee6c8fed'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minishift-#{version}-darwin-amd64/minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
