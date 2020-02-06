cask 'corretto8' do
  version '8.242.08.1'
  sha256 'bf45f7e741124ef0086e31261c93b5462ac490f350a47c988ad8c41a70d01a26'

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-1-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-1-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
