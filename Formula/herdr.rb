class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.60"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.60/herdr-macos-aarch64"
      sha256 "f59d211b448ae131e470a244f8a487517a0510e978102301ad75d89dd2dc7445"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.60/herdr-macos-x86_64"
      sha256 "89a7501e8e4da64e4364d82bd8f7dcbd35caadc0f8f6096e626e45d187cbcdbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.60/herdr-linux-aarch64"
      sha256 "87e3505cb6303242c22bb1d42e7be587cf92fdf2d1c307f007618e63f5133c48"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.60/herdr-linux-x86_64"
      sha256 "910e470fc123241ba745e7af9571d674bf35259a7e0ed252a2e70a0742b2c0c6"
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
