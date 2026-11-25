class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.193"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.193/ikesu-darwin-arm64"
      sha256 "b59ac7a3ac93a1b935a95168414a82366c8ad772b0bf33b966cd0cc904328721"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.193/ikesu-darwin-amd64"
      sha256 "57a40d418c2b7fe92d6dc9d935fe160967f9d499265baa056266daa95b9c827d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.193/ikesu-linux-arm64"
      sha256 "fad8ed9d8a3c9094845c3f0f75e1a624ab4ee09dba6fe05028262e553d6c882e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.193/ikesu-linux-amd64"
      sha256 "091e64816ee1eb32876b88d34b8a6441e5534227d5cdd7b0ef74f034f6432f26"
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
