# Flutter Definition and Installation Steps on Ubuntu

## Definition
**Flutter** is an open-source UI toolkit by Google for building natively compiled apps for mobile, web, and desktop from a single codebase using the Dart language.

## Steps to Install Flutter SDK on Ubuntu

1. **Open Terminal.**

2. **Install Required Dependencies:**
   ```bash
   sudo apt update
   sudo apt install git curl unzip xz-utils zip
   ```

3. **Download Flutter SDK:**
   ```bash
   git clone https://github.com/flutter/flutter.git -b stable
   ```

4. **Add Flutter to your PATH:**
   ```bash
   export PATH="$PATH:`pwd`/flutter/bin"
   ```

5. **Verify Installation:**
   ```bash
   flutter doctor
   ```

---
