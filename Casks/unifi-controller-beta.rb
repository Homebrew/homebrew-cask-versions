cask 'unifi-controller-beta' do
  version '4.6.4-ade9eed'
  sha256 'e2cc1bbef8419320a5a8a52a3fb3cff341746cb78e65ebe92aa03ea03a0fc120'

  url "http://dl.ubnt.com/unifi/#{version}/UniFi.pkg"
  name 'Unifi Controller Beta'
  homepage 'https://community.ubnt.com/t5/UniFi-Wireless-Beta/bd-p/UniFi_Beta'

  pkg 'Unifi.pkg'

  uninstall pkgutil: 'com.ubnt.UniFi'
end
