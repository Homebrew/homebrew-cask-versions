class NetbeansPhpBeta8 < Cask
  url 'http://dlc.sun.com.edgesuite.net/netbeans/8.0/beta/bundles/netbeans-8.0beta-php-macosx.dmg'
  homepage 'http://dlc.sun.com.edgesuite.net/netbeans/8.0/beta/'
  version '8.0 Beta'
  sha1 '74d92f8a954026f767d98427dda2801d8e4dd31a'
  install 'NetBeans 8.0 Beta.mpkg'
  
  # Following example of the stable netbeans-php
  uninstall(
    :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
    :files => '/Applications/NetBeans'
  )
end
