cask 'logic-beta' do
  version '1.2.5'
  sha256 '6699a0da5b14c85da662d2df3b8c6453459a49c1be7e833854bbb000bfce9288'

  url "http://downloads.saleae.com/betas/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'
  license :commercial

  app 'Logic.app'
end
