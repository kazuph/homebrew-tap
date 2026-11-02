class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.63/ikesu-darwin-arm64"
      sha256 "72ab50ec9c97b1891808470f03dda8147042676c59a8918d41efe5c930b81c32"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.63/ikesu-darwin-amd64"
      sha256 "9c125924562a086a7ba3a18176b0e95ee502c84feda134741d8029622a0dd1bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.63/ikesu-linux-arm64"
      sha256 "d193d8936c4a9f3483115fbaec382678c545abb5085c79b8d34b4d02d64c6835"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.63/ikesu-linux-amd64"
      sha256 "87d9058802260403c988060ec5d68d659dccb877a889f2fd07ee35b1ce352ec1"
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
