class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.128"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.128/ikesu-darwin-arm64"
      sha256 "a6a6bc999deef0ed754bf7d23e0b68bd663bdbbf3678d22f5df2ae943915189d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.128/ikesu-darwin-amd64"
      sha256 "00615b0736024d157f911bf6ae14f65119ac061e0706c38012f267c4223e1a17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.128/ikesu-linux-arm64"
      sha256 "5771d79908f073ced6270fefec95489310e716e42df9e57b52f77bdcead8a8bf"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.128/ikesu-linux-amd64"
      sha256 "5a6a84b21a901977a45801362b2ad5dd203f6a5c1836b99f4a367af87a65ecc2"
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
