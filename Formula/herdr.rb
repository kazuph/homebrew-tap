class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.29"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.29/herdr-macos-aarch64"
      sha256 "415ed8de501154ce08c73828db4d89a0d87c1c5085d803f553f109fb5a613c46"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.29/herdr-macos-x86_64"
      sha256 "1882434720ac3a1981201d556b7fbd85acd3f3d3e4f934364e58db75abf7b87b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.29/herdr-linux-aarch64"
      sha256 "ff4d08a1d71f49154b9cd2b8335ceb71d7c1841871f60fb26a0faee6cdbaca4f"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.29/herdr-linux-x86_64"
      sha256 "8165d44723d491a47da19bd315d3d613f480c27e76d7a236ccb8aed176a12e8a"
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
