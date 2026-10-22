class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.66"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.66/herdr-macos-aarch64"
      sha256 "2b0526d06e8bb28090a699343d5c05560ee5b21e66a7412bfcb40117d31ee4f5"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.66/herdr-macos-x86_64"
      sha256 "c721d06337edd62ab19d655848cb8f17842241ca244cd06db8215921c288415e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.66/herdr-linux-aarch64"
      sha256 "dfc65c55257a5081ca6c2b79f754f35489b8488560b80a037f9fac8ffd51696c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.66/herdr-linux-x86_64"
      sha256 "1caa99e5d1f2c609f94f1ecc803d5a1c79ccc08262dde2b27a871d4ba537839b"
    end
  end

  def install
    artifact = Dir["herdr-*"].first
    chmod 0755, artifact
    bin.install artifact => "herdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr --version")
  end
end
