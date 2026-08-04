class Gh0stcli < Formula
  desc "Local gh0stcloud client and MCP adapter"
  homepage "https://gitlab.gh0stservice.com/gh0stlab/gh0stcli"
  version "0.1.8"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.8/gh0stcli_0.1.8_darwin_arm64.tar.gz"
      sha256 "03ce60a2482db23fc668977696d8e30960c8f76a38baac4bcbf17ed6dd4a96ef"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.8/gh0stcli_0.1.8_darwin_amd64.tar.gz"
      sha256 "e961f1bce3b5cd2e7a1907f25995c048f2a24eddad529f8a4cd5a5181a6c6749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.8/gh0stcli_0.1.8_linux_arm64.tar.gz"
      sha256 "2b749fe043be66f32d914e82c7ff696871623b6ad17bca8d409e02172219f3e8"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.1.8/gh0stcli_0.1.8_linux_amd64.tar.gz"
      sha256 "07317a383c55657d319077585ac43ecf19303be81976924b9df3da6faf7c30db"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
