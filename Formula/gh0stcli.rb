class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.3.0"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.3.0/gh0stcli_0.3.0_darwin_arm64.tar.gz"
      sha256 "9a91e91a3dc1e98ea86050d07b9765037c91ebdd6f61f51272240a123e26d12f"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.3.0/gh0stcli_0.3.0_darwin_amd64.tar.gz"
      sha256 "1e29d0b0c3c9f24b0898c536ca6a5c24332bd11a312d564f71dc662529252dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.3.0/gh0stcli_0.3.0_linux_arm64.tar.gz"
      sha256 "5388389dae310e022f5386aac2b963c112d9751bfb759b118305510226c35f79"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.3.0/gh0stcli_0.3.0_linux_amd64.tar.gz"
      sha256 "3540a71d9c5a0297ba4a05b127a18a1e95ef1e3c3c6c75e8e610f9986df30277"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
