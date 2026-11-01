class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.54/ikesu-darwin-arm64"
      sha256 "127c208d67fa78778412c962f8d606565efc36080915bfe405deb9795df9bc33"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.54/ikesu-darwin-amd64"
      sha256 "16cd2fbc66595d14595f3001aa998ea95239f3932e0ff1eb2bbc5e155caea2c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.54/ikesu-linux-arm64"
      sha256 "87fc84bb6431fe258a47130f6efffea35f4c80f7b2dd421e92fbffacdcd588d6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.54/ikesu-linux-amd64"
      sha256 "67fbab85fa639e95b5ac79e08196870f658254beca016eae39b34ea3cfd56b7c"
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
