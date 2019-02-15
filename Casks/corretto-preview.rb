cask 'corretto-preview' do
  version '11,11.0.2.9.1'
  sha256 '40f355bbb15831ff52d099c3f88564ed23f83335df7c1edf953aeb351786a84f'

  # d2jnoze5tfhthg.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2jnoze5tfhthg.cloudfront.net/amazon-corretto-#{version.after_comma}-macosx-x64.pkg"
  appcast 'https://docs.aws.amazon.com/en_us/corretto/latest/corretto-11-ug/corretto-11-ug.rss'
  name 'Amazon Corretto 11 Preview'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version.after_comma}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.before_comma}"
end
