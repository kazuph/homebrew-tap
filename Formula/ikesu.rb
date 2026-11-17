class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.163"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.163/ikesu-darwin-arm64"
      sha256 "7d8dca09511766a9852009426b9d78b64c51c817800394c933a66c9fe3d4dfae"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.163/ikesu-darwin-amd64"
      sha256 "a71e7963b4d897347ed1c572f0aa44f24af08eee191bb407b86a2b39c9bb3d71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.163/ikesu-linux-arm64"
      sha256 "10e345400ac8d5b6886457fcec0aec93359a9020761b2975769389452298fd13"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.163/ikesu-linux-amd64"
      sha256 "2f52a41a9160ee8ba8b5059f0b4a45e6375489d537de0c34dce5c04c5b583a42"
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
