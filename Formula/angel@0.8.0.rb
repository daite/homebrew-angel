class AngelAT080 < Formula
    desc "simple CLI for searching torrent magnet!"
    homepage "https://github.com/daite/angel"
    url "https://github.com/daite/angel/archive/refs/tags/v0.8.0.tar.gz" # Replace with your local or remote URL
    sha256 "f360c71536191e00b21d97c4a16428b94b0b503cd1d102aeacd0a003552227ba" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-ldflags", "-s -w", "-o", bin/"angel", "./cmd/angel"
    end
  
    test do
      assert_match "angel version", shell_output("#{bin}/angel --version")
    end
  end
