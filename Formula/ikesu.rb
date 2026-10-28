class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.25/ikesu-darwin-arm64"
      sha256 "215d3beff7e4a1fef69dabd562beaff8d96be37220c8cdac67b5c6c8430aeb72"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.25/ikesu-darwin-amd64"
      sha256 "b7f9edb99a74ea79fd2c277f51462a8a69e1bf24ca5ea6d232e218a6b1f623d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.25/ikesu-linux-arm64"
      sha256 "a3131f0b4a46f35922198000185b05a05b228bd176513bfa6ab97aa0a7a14175"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.25/ikesu-linux-amd64"
      sha256 "ca77cb001c0143a2197193e27412d2c3614d2186ca7c5456edba1388e4a3158b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
