cask :v1 => 'mountain-beta' do
  version '1.6'
  sha256 '973c8c7edf4eafd6620e1329d5b92dd62b5eb306ece20799a5db8868f3cf4094'

  url "http://appgineers.de/mountain/files/#{version}/Mountain.zip"
  homepage 'http://appgineers.de/mountain/'
  license :unknown

  app 'Mountain.app'
end
