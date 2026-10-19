class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.64"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.64/herdr-macos-aarch64"
      sha256 "97734acb0898dd6f50728c2fc3b250f82e2474cb28e518d713298d1479a5aed8"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.64/herdr-macos-x86_64"
      sha256 "d49610503a7515f9de6ea8ba3db35c573b5fc3e4b98c4d452acfb711257acf74"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.64/herdr-linux-aarch64"
      sha256 "0cea6b54d341a20a50a3a20c6dc96fe29b5e897bb176408a89f18fdbb57ce7ac"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.64/herdr-linux-x86_64"
      sha256 "c4003a5ed12e6002856591112d8de587f87a089ac85c83cf32c8fbe9eb00f9dd"
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
