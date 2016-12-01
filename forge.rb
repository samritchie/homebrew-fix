class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://forge.run"
  url "https://github.com/fsharp-editing/Forge/releases/download/1.2.1/forge.zip"
  sha256 "f69695828264461e3f3a2f29828b73323f01e5509ff3b758840280063fa73368"
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

