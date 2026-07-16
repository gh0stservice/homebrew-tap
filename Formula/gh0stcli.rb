class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.3"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.3/gh0stcli_0.1.3_darwin_arm64.tar.gz"
      sha256 "a94acc96075f152dea3fe9f31c14a7fbaed9787220f7388c9eca74c985fc1932"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.3/gh0stcli_0.1.3_darwin_amd64.tar.gz"
      sha256 "c44c7bce8b78968d23a72f69383e572c958b3d5b70ca1235e3c0c2587a23130c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.3/gh0stcli_0.1.3_linux_arm64.tar.gz"
      sha256 "23fc8706163095420aa9c193d25993776eda9a0a69b996f3da84b5ce83f8e536"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.3/gh0stcli_0.1.3_linux_amd64.tar.gz"
      sha256 "839551663361822260a870670bd2274bc6256ab7067ae7ec78566b5759d685ff"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
