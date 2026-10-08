class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.18"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.18/herdr-macos-aarch64"
      sha256 "4184a103a8c2e8f56dc85884c0d93f5e3f0acd71af66e96cc5b0015a92d26381"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.18/herdr-macos-x86_64"
      sha256 "52c38921cbdae1384196c13af1592b48c9ca5c6965b892f30862a48fb39bca03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.18/herdr-linux-aarch64"
      sha256 "be6752b5d670fa06d919ffdeae4710c8854bd55ecf322ef47de13b1a817c72f0"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.18/herdr-linux-x86_64"
      sha256 "1d73d7e4d8887c158ec94997f6fe6ce32f9e815f16b71d25e84711232ad96dad"
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
