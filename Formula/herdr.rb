class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.51"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.51/herdr-macos-aarch64"
      sha256 "28dfcabc63f308255e6ea7ad50568cf08c080fc2fde457efb81eb7c4df3baf86"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.51/herdr-macos-x86_64"
      sha256 "4f6fa2e995cde7479abcc217a3f82dd9d10455245edd71cb06034a3cfdbbfb5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.51/herdr-linux-aarch64"
      sha256 "c37eb2197656fdfab29c8d2a7e122de5c0dfb92895c804dfebac3462428a5aeb"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.51/herdr-linux-x86_64"
      sha256 "480503a56abc6c177d7f74744c6883695dcfa71a125f2545a10553344805b1b3"
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
