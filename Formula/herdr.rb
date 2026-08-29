class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.2"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.2/herdr-macos-aarch64"
      sha256 "c81aa812117160352ed5a13bff9fc8a64a456c63c9c14c70e781ca254cf40995"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.2/herdr-macos-x86_64"
      sha256 "6a0a8412074324be7416a22a02e663dc2d5a9946de5849434fe8ae4bdf39852f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.2/herdr-linux-aarch64"
      sha256 "26f344914764bea26e38f15e6a1fdb299fd1a04c7bef926b2c04a380356b1b59"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.2/herdr-linux-x86_64"
      sha256 "d64384b3bdc4d39ec529f504514aa3849e6dbc477da46dbced7a2a9b48a8d6e1"
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
