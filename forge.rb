class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://forge.run"
  url "https://github.com/fsharp-editing/Forge/releases/download/1.2.0/forge.zip"
  sha256 "04a4ec9bbebb79e6296b58ec81bceb4647d09a98fc22faeabb95d464262da6fb"
  depends_on "mono"

  bottle :unneeded

  def install
    libexec.install Dir["bin/*"]
    (bin/"forge").write <<-EOS.undent
      #!/bin/sh
      mono #{libexec}/Forge.exe "$@"
    EOS
  end
end

