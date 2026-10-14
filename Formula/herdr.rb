class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.49"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.49/herdr-macos-aarch64"
      sha256 "4ef0c0885d39cf46c61514682e65fa79e69e6f4fe984e46ff9398022acb8db71"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.49/herdr-macos-x86_64"
      sha256 "38c5bc9170fd4546c69b9197ed14c5a57f71ba686715a6a31967421c3e236fb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.49/herdr-linux-aarch64"
      sha256 "9db7f69872dc321c25404d5ee864c92c7dba98f21ee6f47b8154a6d6e8803988"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.49/herdr-linux-x86_64"
      sha256 "002db6c7bd13c6c88e9615335e2753184ce1e1010ee0767a90f1016d4adc925e"
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
