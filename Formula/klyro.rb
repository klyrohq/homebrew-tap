class Klyro < Formula
  desc "Klyro command-line interface"
  homepage "https://klyro.security"
  version "1.10.1"

  on_macos do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.1/klyro_v1.10.1_darwin_arm64"
      sha256 "7728601399594d6319d84a57e8c4581786f9f91347a27b79b95932715255a46e"

      def install
        bin.install "klyro_v1.10.1_darwin_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.1/klyro_v1.10.1_darwin_amd64"
      sha256 "4211eaf51de4d5860a40d913877561bf005adf3e2f47e485b4928434f2139a44"

      def install
        bin.install "klyro_v1.10.1_darwin_amd64" => "klyro"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://get.klyro.security/cli/v1.10.1/klyro_v1.10.1_linux_arm64"
      sha256 "f706076b693eda4954a030e32caa2363401214ee23641136b941e320dd8ae52a"

      def install
        bin.install "klyro_v1.10.1_linux_arm64" => "klyro"
      end
    end

    on_intel do
      url "https://get.klyro.security/cli/v1.10.1/klyro_v1.10.1_linux_amd64"
      sha256 "3279b7cf43fa2f4fb70313ca0a39364404ef4c054151203744b4c00bb5cb4677"

      def install
        bin.install "klyro_v1.10.1_linux_amd64" => "klyro"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klyro version")
  end
end
