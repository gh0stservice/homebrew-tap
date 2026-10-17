class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.10.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.10.1/gh0stcli_0.10.1_darwin_arm64.tar.gz"
      sha256 "fc3afd575a9feeeb6062a2e0d854afed487577a915494f9eac423dbfc7d99b66"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.10.1/gh0stcli_0.10.1_darwin_amd64.tar.gz"
      sha256 "dea328349851507c30b374bcc4e34e906bbb39f17c7eb1693481ae33c4b2d658"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.10.1/gh0stcli_0.10.1_linux_arm64.tar.gz"
      sha256 "f812d89dc11426830e80675af985758c4ba7af09b63458ad69254720fe4485e0"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.10.1/gh0stcli_0.10.1_linux_amd64.tar.gz"
      sha256 "ed94c18b01cebc308b3633d01e6db4e1c19070bd0faa39d54f5352759c52460d"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
