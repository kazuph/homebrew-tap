class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.167"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.167/ikesu-darwin-arm64"
      sha256 "78f978b5b1dfcfe19f1ab3a88b13361bb22b5aee1611ab0ca4594e8b9166d571"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.167/ikesu-darwin-amd64"
      sha256 "2c0a6bfb49402aa002a371d0f5fb5b536170e0893633f77450ae2c926718344a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.167/ikesu-linux-arm64"
      sha256 "c4d1b5eef31202ad49374e5ab1c834a031099ebdd329029e5924d658155e5b33"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.167/ikesu-linux-amd64"
      sha256 "6aa989ea7698f2b9fac5c01fbbf9cb486cf1dc7f8fcb9fb26339948083280e88"
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
