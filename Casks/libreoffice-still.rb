cask "libreoffice-still" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.5.8"
  sha256 arm:   "b2302b637efe1d9981088b8d04c328d6d38cf32e33e6fed60c0188550228eec3",
         intel: "8aa61ca2691eb1e7e1caad361eb54649257289b80cc0ebec55a99c4afbf529cd"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Still"
  desc "Free cross-platform office suite, stable version recommended for enterprises"
  homepage "https://www.libreoffice.org/"

  # LibreOffice "still" releases are the stable versions with a lower
  # major/minor.
  livecheck do
    url "https://download.documentfoundation.org/libreoffice/stable/"
    regex(%r{href=["']v?(\d+(?:\.\d+)+)/?["' >]}i)
    strategy :page_match do |page, regex|
      versions = page.scan(regex).map(&:first)
      uniq_major_minor = versions.map { |version| Version.new(version).major_minor }.uniq.sort.reverse
      next if uniq_major_minor.length < 2

      versions.select { |version| Version.new(version).major_minor == uniq_major_minor[1] }
    end
  end

  conflicts_with cask: "libreoffice"
  depends_on macos: ">= :mojave"

  app "LibreOffice.app"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: "soffice"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*",
    "~/Library/Application Support/LibreOffice",
    "~/Library/Preferences/org.libreoffice.script.plist",
    "~/Library/Saved Application State/org.libreoffice.script.savedState",
  ]
end
