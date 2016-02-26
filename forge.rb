class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "http://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.7.0/forge.zip"
  sha256 "6e6701fb88a5781e9277ee315902b450fbac79303ab6ee4fd72f4d83bc897f7a"
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
