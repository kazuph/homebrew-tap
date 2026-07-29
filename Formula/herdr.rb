class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.1/herdr-macos-aarch64"
      sha256 "1b5f492d115b497fee4c1c1edc478afe4d472a2ffa388489906795742d4e1f09"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.1/herdr-macos-x86_64"
      sha256 "941153a1a236f27d04da242f81f6902190e9b110d29665f65badd59a782f6a81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.1/herdr-linux-aarch64"
      sha256 "c564542a1d1e090c0f91cd72baddc6488e8c213f04a4ca904424632a9e50cc9e"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.1/herdr-linux-x86_64"
      sha256 "eb752a3e4f5d07aa4892bd20d52319c54d960cb51132e0a1b40c807c95748f5c"
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
