class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.7.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.7.0/gh0stcli_0.7.0_darwin_arm64.tar.gz"
      sha256 "65716d0cd0793c65431216b13e1d0030bab7d3135d3079f15c720d8641251f53"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.7.0/gh0stcli_0.7.0_darwin_amd64.tar.gz"
      sha256 "316052211216d70a8f1abdfa2bead67ee9ca09ec3cbd373fe85cad446ab76d54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.7.0/gh0stcli_0.7.0_linux_arm64.tar.gz"
      sha256 "299ca4f718e295650e747297160b0abfe3b483a07f150e6355e16606dee99901"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.7.0/gh0stcli_0.7.0_linux_amd64.tar.gz"
      sha256 "4d5d9e832cb21b92d8ab6baef7644d2d0a511db23a7f6b2da13b93427fe53bd7"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
