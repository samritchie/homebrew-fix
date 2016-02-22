class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "http://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.7.0/forge.zip"
  sha256 "6E6701FB88A5781E9277EE315902B450FBAC79303AB6EE4FD72F4D83BC897F7A"
  depends_on "mono"
  
  bottle :unneeded

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/forge.exe "$@"
    EOS
  end
end
