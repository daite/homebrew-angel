# homebrew-angel
To set up a remote Homebrew tap for your project, such as the `angel` tool, you’ll need to host your formula on GitHub. Here’s how you can set up a remote Homebrew tap for `angel`:

### 1. Create a GitHub Repository for Your Tap

1. Go to GitHub and create a new repository.

   - **Repository Name:** It should follow the naming convention `homebrew-<name>`. For example: `homebrew-angel`.
   - **Visibility:** You can choose to make it public or private depending on who should have access.

   Your repository URL will look like this: `https://github.com/<your-username>/homebrew-angel`

2. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/<your-username>/homebrew-angel.git
   cd homebrew-angel
   ```

### 2. Add the Formula to Your Repository

1. Inside the repository, create a `Formula` directory:

   ```bash
   mkdir Formula
   cd Formula
   ```

2. Create the formula file for your `angel` tool. For example, `angel.rb`:

   ```bash
   touch angel.rb
   ```

3. Open the file in your preferred text editor and add the following content:

   ```ruby
   class Angel < Formula
     desc "A description of the Angel application"
     homepage "https://github.com/daite/angel"
     url "https://github.com/daite/angel/archive/refs/tags/v1.0.0.tar.gz" # Replace with the actual URL to the source code tarball
     sha256 "SHA256_OF_TARBALL" # Replace with the actual SHA256 checksum
     license "MIT"

     depends_on "go" => :build

     def install
       system "go", "build", "-o", bin/"angel", "./cmd/angel"
     end

     test do
       assert_match "angel version", shell_output("#{bin}/angel --version")
     end
   end
   ```

4. Replace the `url` with the URL to your project’s source code tarball (you can use a GitHub release or a specific commit). Also, update the `sha256` with the correct SHA-256 checksum of the tarball.

5. Save the file and commit your changes:

   ```bash
   git add .
   git commit -m "Add angel formula"
   git push origin main
   ```

### 3. Distribute the Tap

Now that your tap is hosted on GitHub, users can install your `angel` tool using Homebrew.

1. Users first need to tap your repository:

   ```bash
   brew tap <your-username>/angel
   ```

2. They can then install the `angel` tool:

   ```bash
   brew install angel
   ```

### 4. Updating the Formula

When you release a new version of `angel`, update the `url` and `sha256` in the formula, commit the changes, and push them to GitHub. Users can then update the tool via:

```bash
brew update
brew upgrade angel
```

### 5. Optional: Add a README for the Tap

You can add a README file to your GitHub repository to provide instructions on how to use the tap and install `angel`:

```markdown
# homebrew-angel

This is the Homebrew tap for the Angel tool.

## Installation

```bash
brew tap <your-username>/angel
brew install angel
```

## Usage

Run `angel` with the appropriate commands.

For more details, visit [the official Angel repository](https://github.com/daite/angel).
```

### Summary

Once this setup is complete, you have a fully functioning Homebrew tap that others can easily use to install your `angel` tool directly from GitHub.
