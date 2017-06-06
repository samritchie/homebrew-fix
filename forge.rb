class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://forge.run"
  url "https://github.com/fsharp-editing/Forge/releases/download/1.4.2/forge.zip"
  sha256 "b977a69a55883a45342e65f940446fadc04895b78b2b92c4aabe3612a89af063"
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

