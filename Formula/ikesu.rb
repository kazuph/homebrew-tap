class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.74"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.74/ikesu-darwin-arm64"
      sha256 "a573a7f2963acb551317ec3d0b211e77773800e71760eae4864aa5ddf76dd7dd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.74/ikesu-darwin-amd64"
      sha256 "aed58ac361264fb138852a672b7826e4111a874f9b388d8fdfa4c23ef375f2fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.74/ikesu-linux-arm64"
      sha256 "b7f3ca1beafed55c7fd354815574585c5a02bcc3def81e54458b61449d29a865"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.74/ikesu-linux-amd64"
      sha256 "ebe1c1769a1d7e2562a59d1ee3be6173fe55909d24728339f2a99e9df2575be2"
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
