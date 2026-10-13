class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.37"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.37/herdr-macos-aarch64"
      sha256 "f670a9a8e5713e26c1e47a6bb20f62657f2b8aa930f5f4104985697bf8244b96"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.37/herdr-macos-x86_64"
      sha256 "b55ecf17ec0417208ac56eba627799660b7a1f60b1f8758979761e1c9007f013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.37/herdr-linux-aarch64"
      sha256 "83c61e403480976c7ed7f8cdd3612b97fca028af99e491110b75f67444c59d2d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.37/herdr-linux-x86_64"
      sha256 "e6d0dbed7e37f7c05866a1df0e66495a83048062ffca4043d95381bce652716e"
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
