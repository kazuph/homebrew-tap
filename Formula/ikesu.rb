class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.76/ikesu-darwin-arm64"
      sha256 "c5dc5bbf3d959c096081eba9c70009fc61096b018c793a07f956f3859406cb45"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.76/ikesu-darwin-amd64"
      sha256 "3ea3dfe0cce495673aa71e3cfdbbbd7eac2a945fd45b3258ea9871f45475ebc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.76/ikesu-linux-arm64"
      sha256 "fe17776fa06bbd11200990554aee99abb3303d94ecc76defa7196aa8726d374e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.76/ikesu-linux-amd64"
      sha256 "6a80eab9919ea5275047b5c9a289983ce88034b99c2f1981e6c6d3815afe6908"
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
