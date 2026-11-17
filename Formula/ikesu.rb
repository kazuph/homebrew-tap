class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.169"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.169/ikesu-darwin-arm64"
      sha256 "ab6c45968df3aedd34dcb0227de557799adaecb9082c6bedb2c541606894ce03"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.169/ikesu-darwin-amd64"
      sha256 "a7bbad05af6040cf7eb09c912bf00d6a74f5d428e9666dd644a015682d0cdea2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.169/ikesu-linux-arm64"
      sha256 "693bd1bec341c2f77b4c6547d4f2d7ca14efdeda9c13c16cd9c5765a213f886b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.169/ikesu-linux-amd64"
      sha256 "f364fa5dfc01ec78f2d6e49f8e1e2f2f3f30a45c8cf59cd2ed538bef7ed30f20"
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
