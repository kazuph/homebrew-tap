class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.153"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.153/ikesu-darwin-arm64"
      sha256 "84bfe74a799e53ec95e060e7c93d1a8a14fbc41d7db73b91d331f76352efbf68"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.153/ikesu-darwin-amd64"
      sha256 "1e8e6bc4866d49ca0bc41a42dfb5416c30a1d3d7efe4817a9fc3f3fd48bf6c37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.153/ikesu-linux-arm64"
      sha256 "45297a8ca7b4f75e305d975a54198b739cd8420fd4d81745ddf07fc91133cbdf"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.153/ikesu-linux-amd64"
      sha256 "6c85de52d852321029ffc97d46010d5abfd8d8283fcf1923548f32f075340a45"
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
