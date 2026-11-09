class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.115"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.115/ikesu-darwin-arm64"
      sha256 "b27d806af792327d49ecf7234561855ca6cacb4a9f101c4a77cf42128358eda3"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.115/ikesu-darwin-amd64"
      sha256 "a1047ae0f637b046cf82627a3f129b0a2d49062c22b4ffdd6ff822b94295e233"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.115/ikesu-linux-arm64"
      sha256 "fc6e011f549b4be3eca95b4b9a4cedd784e2e9bae6b6e2a9ee71e59daf6a0a76"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.115/ikesu-linux-amd64"
      sha256 "321a9017de2e323c72a574796ef8f5c693e892b819007738ed31b90b5ee9bda1"
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
