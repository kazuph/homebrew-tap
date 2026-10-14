class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.50"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.50/herdr-macos-aarch64"
      sha256 "a1465b17b868a1d68a7c5aaabc3c3d667a5ed67115cb4a68b853a89239824c58"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.50/herdr-macos-x86_64"
      sha256 "b4f87ac6924ef30cda34de76451bed94770a814082737ac5cd4c4a07ed481cd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.50/herdr-linux-aarch64"
      sha256 "339cd19c073bb2b76788124c60f54309199de4aa4b1e4d857fa150185dc0a7a9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.50/herdr-linux-x86_64"
      sha256 "3384d2858108733c6bb2fc6b277a103d74e3eda1c003174006ff5255cb4d5d03"
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
