cask 'flux-beta' do
  version '39.94'
  sha256 '45e69b3f02c02e6f442c1e2ce49b70e14f69d5cb7453cad031e61055ffbdb318'

  url "https://justgetflux.com/mac/Flux#{version}.zip"
  appcast 'https://justgetflux.com/mac/macflux.xml',
          checkpoint: '985279ebc6a5d234bcf5b04d94220702b9bbdaa2f89a4720f3444a395ed1d47b'
  name 'f.lux'
  homepage 'https://justgetflux.com/'

  auto_updates true
  conflicts_with cask: 'flux'

  app 'Flux.app'

  uninstall login_item: 'Flux'

  zap delete: [
                '~/Library/Preferences/org.herf.Flux.plist',
                '~/Library/Caches/org.herf.Flux',
              ]
end
