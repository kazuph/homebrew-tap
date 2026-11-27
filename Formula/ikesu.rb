class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.207"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.207/ikesu-darwin-arm64"
      sha256 "09233801d51982e671af463ec60fdd42e7523e3325556eb95cac0de4b35382bf"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.207/ikesu-darwin-amd64"
      sha256 "9c6be671a872910f01a80c0ef6748302b5f3869d4f02ed981a345716c2dcdf00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.207/ikesu-linux-arm64"
      sha256 "59ed68d54e7a4b391e4df30488c5d5802a4b1c9e831d1945ff4d159c82633bf3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.207/ikesu-linux-amd64"
      sha256 "98b6f5b08a0e4ae35025058a0b9ec00545162177dec0a0607f3b7d86ef93cd19"
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
