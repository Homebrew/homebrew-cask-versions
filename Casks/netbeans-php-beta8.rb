class NetbeansPhpBeta8 < Cask
  url 'http://dlc.sun.com.edgesuite.net/netbeans/8.0/beta/bundles/netbeans-8.0beta-php-macosx.dmg'
  homepage 'http://dlc.sun.com.edgesuite.net/netbeans/8.0/beta/'
  version '8.0 Beta'
  sha256 '3b1a3a9cc4980877b6a9e29a6147d12bbbfb2a38423ed99a883e024b9c21ea7d'
  install 'NetBeans 8.0 Beta.mpkg'

  # Following example of the stable netbeans-php
  uninstall(
    :pkgutil => 'org.netbeans.ide.*|glassfish-.*',
    :files => '/Applications/NetBeans'
  )
end
