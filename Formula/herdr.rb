class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.16"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.16/herdr-macos-aarch64"
      sha256 "1322a5d2c27545bba7f722ed83bc30565873984444f61ea760a0fc8685524141"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.16/herdr-macos-x86_64"
      sha256 "5c11dfa4f0124af9eec67c88c2ae5d62275ddb1d245e901a7ca4ded56f42ab36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.16/herdr-linux-aarch64"
      sha256 "652ec8aca5fe76beec9d3a501f2ea6a298ff3428f3f7a45d65b56c55dce03460"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.16/herdr-linux-x86_64"
      sha256 "f0251c9d89891b1cc40bfbde17edda77f64184f2324da3a5bc5a41c9b10fb5d3"
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
