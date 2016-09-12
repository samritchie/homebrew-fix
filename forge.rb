class Forge < Formula
  desc "Forge (Command line tool for creating F# Projects)"
  homepage "https://fsprojects.github.io/Forge"
  url "https://github.com/fsprojects/Forge/releases/download/1.0.0/forge.zip"
  sha256 "cf976396be7172e0ba275f0dac8cda63583317da9073fb5095fb06bb2b423529"
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

