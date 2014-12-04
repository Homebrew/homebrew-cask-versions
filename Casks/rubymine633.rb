cask :v1 => 'rubymine633' do
  version '6.3.3'
  sha256 'c79216de02f2564ea60592420342ab9fb5014da7e7c96f92e2856dc49f2090dd'

  url "http://download-cf.jetbrains.com/ruby/RubyMine-#{version}.dmg"
  homepage 'http://www.jetbrains.com/ruby/'
  license :unknown

  app 'RubyMine.app'

  postflight do
    plist_set(':JVMOptions:JVMVersion', '1.6+')
  end
  zap :delete => [
                  "~/Library/Application Support/RubyMine#{version.gsub('.','')}",
                  "~/Library/Preferences/RubyMine#{version.gsub('.','')}",
                 ]
end
