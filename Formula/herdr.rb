class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.32"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.32/herdr-macos-aarch64"
      sha256 "baf5226bb6055c595e70794c2939cd878fa413cdd861db8271f704a9b61e3dc9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.32/herdr-macos-x86_64"
      sha256 "ad357d750b092b25b84d9089708deb3c33a67fba169f7a3603f67a8a191c610b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.32/herdr-linux-aarch64"
      sha256 "360c575713139cb7b8724eca7295c5f6201614ad2a226e57e206075e658504cb"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.32/herdr-linux-x86_64"
      sha256 "fac79a25f453615e5d80d7730491ee36f0e8d69e8c9c780e719761b5e5d10b61"
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
