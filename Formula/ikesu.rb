class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.15/ikesu-darwin-arm64"
      sha256 "b1ae35d0e1eb9ffadb09c8f52d55d375bb4d34463a7689f755d51f00e4ab790e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.15/ikesu-darwin-amd64"
      sha256 "955c5fc05ae5eac084e0c8b87aa210b5d6aca96c89fda7cde2b880772df316eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.15/ikesu-linux-arm64"
      sha256 "5e27361aa90ff5386235d4a26dfe13a9d52ff68b1c5f1ade166f598d50fe0c0d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.15/ikesu-linux-amd64"
      sha256 "934be5c7c5d088e2563993bc5b7463c94e293ded78814645466a39ef60bac7c6"
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
