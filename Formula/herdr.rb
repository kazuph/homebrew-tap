class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.62"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.62/herdr-macos-aarch64"
      sha256 "0a3ca0dd6fb0076a63143f44803705a599408b16198c1dfc844d66fe9226c1ee"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.62/herdr-macos-x86_64"
      sha256 "6afa6c386f04887e3e2c4a31e58c7e2c84b8e13e88a093ae979cacbe4befd91d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.62/herdr-linux-aarch64"
      sha256 "d0ce90be992a05b1ab38b09d7a019f2eee0003fc6a06e01676cb1c7d42402921"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.62/herdr-linux-x86_64"
      sha256 "92b67d744058aa22522982bc8bd2822b0d862dab1b7790df62a34508c7ff4760"
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
