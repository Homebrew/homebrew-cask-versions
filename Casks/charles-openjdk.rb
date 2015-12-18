cask 'charles-openjdk' do
  version '3.9.3'
  sha256 '817dd2ba6167682563ca62c32dfa32afefab95f7d26f5625c2f82bee7d849e58'

  url "http://www.charlesproxy.com/assets/release/#{version}/charles-proxy-#{version}-openjdk.dmg"
  name 'Charles'
  homepage 'http://www.charlesproxy.com/'
  license :commercial

  app 'Charles.app'
end
