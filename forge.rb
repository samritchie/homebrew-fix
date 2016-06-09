class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.7.0/forge.zip"
  sha256 "6e6701fb88a5781e9277ee315902b450fbac79303ab6ee4fd72f4d83bc897f7a"
  depends_on "mono"

  bottle :unneeded

  devel do
    url "https://github.com/fsprojects/Forge/releases/download/1.0.0-alpha004/forge.zip"
    version "1.0.0-alpha004"
    sha256 "c5c0b86db26c999cdba8c4e2b0ce91865301904e73c9f888afb97f6fcea91ccc"
  end

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/forge.exe "$@"
    EOS
  end
end

