cask 'corretto8' do
  version '8.232.09.2'
  sha256 'b31250af04e1a88d4345997949154b380249afcde49baba6bdc3c035d10127dd'

  # d3pxv6yz143wms.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
