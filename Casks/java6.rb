cask "java6" do
  version "1.6.0,65-b14-468"
  sha256 "3a91bd24a0524df4cde9433f2ac56182818f78aacda36c7529b3d548e0c12e63"

  # updates.cdn-apple.com/ was verified as official when first introduced to the cask
  url "https://updates.cdn-apple.com/2019/cert/041-88384-20191011-3d8da658-dca4-4a5b-b67c-26e686876403/JavaForOSX.dmg"
  name "Apple Java 6 Standard Edition Development Kit"
  homepage "https://support.apple.com/kb/DL1572"

  if MacOS.version <= :mojave
    pkg "JavaForOSX.pkg"

    uninstall pkgutil: "com.apple.pkg.JavaForMacOSX107"
  else
    artifact "JavaForOSX/JavaForOSX.pkg/Payload/Library/Java/JavaVirtualMachines/#{version.before_comma}.jdk", target: "/Library/Java/JavaVirtualMachines/#{version.before_comma}.jdk"

    preflight do
      system_command "pkgutil", chdir: staged_path, args: ["--expand-full", "JavaForOSX.pkg", "JavaForOSX"]
    end
  end
end
