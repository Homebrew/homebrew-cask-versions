cask :v1 => 'camtwist-beta' do
  version '3.0beta'
  sha256 'c0a241a0313b8b1aa3530efa4fba058b4cfa3cacea41df815738dafddbf7897b'

  url 'http://camtwiststudio.com/beta/CamTwist_3.0.dmg'
  homepage 'http://camtwiststudio.com/'
  license :unknown

  pkg 'CamTwist.pkg'

  uninstall :script => { :executable => 'Manual Install/CamTwist/uninstall.command' }
end
