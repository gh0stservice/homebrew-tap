class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.0/gh0stcli_0.1.0_darwin_arm64.tar.gz"
      sha256 "741b771b6b09a040abae3b2749d5685dcd17ed2b290ee437d788032bd5863b3d"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.0/gh0stcli_0.1.0_darwin_amd64.tar.gz"
      sha256 "924158f1ff7fa15369b1d13405c5d015dbd11bab0442329e3fe19c77e39d0945"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.0/gh0stcli_0.1.0_linux_arm64.tar.gz"
      sha256 "207f4b95c221cc0a61a45a41a57a7c912691aa45bce728b9cbfbbe6e84b90ae0"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.0/gh0stcli_0.1.0_linux_amd64.tar.gz"
      sha256 "151a5ffd31d7ae6c1974c65cd41457f7e4cd9cd197c22cd6acecc4e3e0bee99b"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
