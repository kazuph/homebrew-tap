class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.71/ikesu-darwin-arm64"
      sha256 "79e5d700a50f86794820ae4f71c04263172e1142f5b4d33461c97736a597effe"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.71/ikesu-darwin-amd64"
      sha256 "03906b81906ed5a8f33102137d56dc64450db08c0495c7cd5afc169338bca71b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.71/ikesu-linux-arm64"
      sha256 "5f9e8da51d556a12cc7f526b43dc08afbf8dda059060031afeb5ba8158224214"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.71/ikesu-linux-amd64"
      sha256 "ccd1d37a60a038562c821e8c879260292ea789c299656d93707d9adb18444125"
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
