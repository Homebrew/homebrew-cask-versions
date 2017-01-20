cask 'minishift-beta' do
  version '1.0.0-beta.2'
  sha256 'de238fd78d2d1463fba831ecb338fb600d37b22a2ac97496d58dd39bbc4928ca'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '6767956789af0782f42c860fa99bfd4d27be20a9c5457910007303661a235a48'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift", '0755'
  end
end
