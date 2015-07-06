cask :v1 => 'mpeg-streamclip-beta' do
  version '1.9.3b8'
  sha256 '42459e262e46df81228ef3859aba102d9368be3a5710514a3055dd9f49c2f234'

  url "http://www.squared5.com/svideo/MPEG_Streamclip_#{version}.dmg"
  name 'MPEG Streamclip'
  homepage 'http://www.squared5.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MPEG Streamclip.app'
end
