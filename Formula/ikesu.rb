class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.202"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.202/ikesu-darwin-arm64"
      sha256 "a5ce0715fcb2a604e81e4b84546a2d17d50a36a751e71a6e6ab91f02f3f1222f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.202/ikesu-darwin-amd64"
      sha256 "4ec9f35c1361c439b812b4dbc6f6fab7c81031adf7eef82d974ca3e2b15658ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.202/ikesu-linux-arm64"
      sha256 "329424d9ddbf519e6dd71eebf88f03a2f358c32bb773d78d572cb6fa2d397b8d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.202/ikesu-linux-amd64"
      sha256 "6b664f4a8915dd0e3b448e03a11b6aeb2ee7453f684df9dba9fd6c1f319ad697"
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
