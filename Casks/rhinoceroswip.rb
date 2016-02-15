cask 'rhinoceroswip' do
  version '5C131w'
  sha256 'a550976da9e8272240723451c46d2aaf7e76bb26b6d5539be224e5c81a39e53a'

  # mcneel.com was verified as official when first introduced to the cask
  url "https://files.mcneel.com/Releases/Rhino/5.0/Mac/RhinoWIP_#{version}.dmg"
  name 'Rhinoceros WIP'
  homepage 'http://www.rhino3d.com/download/rhino-for-mac/5/wip'
  license :commercial

  app 'RhinoWIP.app'
end
