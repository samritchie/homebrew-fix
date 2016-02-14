class Forge < Formula
  desc "Forge (F# Project Builder)"
  homepage "https://github.com/fsprojects/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/0.6.0/forge.zip"
  sha256 "a74dc0e50bcf7db5e9380c67c4374ad148b7c107dcbc47425a4a3c36026fcf7a"
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
