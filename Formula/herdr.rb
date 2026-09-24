class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.5"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.5/herdr-macos-aarch64"
      sha256 "7552caf4ec6424af9829bcb2245c148db0eb9e51fc7d17f5b7ab7a5dc0fd4332"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.5/herdr-macos-x86_64"
      sha256 "4b1a945d38d4c433f0f115e5cc01ddb738a1839a9a85d60f814d9fb8ef3bd952"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.5/herdr-linux-aarch64"
      sha256 "d17e183ba06147e771f4dc4210f541bdf6311ab60ad93d12ac3848c65c023b8a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.5/herdr-linux-x86_64"
      sha256 "77e3532f285d5b1d63cfc9516adb18261e92f1a9355e45293a13085b282bb2d0"
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
