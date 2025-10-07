# ROAR App

This repository contains two ways to explore the ROAR emotional wellness experience:

- A static marketing site at the repository root (`index.html`).
- An iOS SwiftUI prototype located under `ios/RoarApp`.

The sections below walk through previewing each experience locally and outline quick
steps for publishing the static site.

## Prerequisites

- **Web preview:** Any modern web browser. Optional: Python 3 for running a quick
  static web server.
- **iOS app:** macOS with Xcode 15 (or newer) installed to build and run the
  SwiftUI project.

## Preview the web landing page locally

1. Open a terminal and move into the repository folder.
2. Start a lightweight static server (pick one of the following commands):

   ```bash
   # Python 3 built-in HTTP server
   python3 -m http.server 5173
   ```

   ```bash
   # Or use Node's serve if you have it installed globally
   npx serve . -l 5173
   ```

3. Visit `http://localhost:5173` in your browser. The landing page lives entirely
   in `index.html`, so no build step is required. When you make edits, refresh the
   page to see them immediately.

### Publish the landing page

Because the marketing site is a single HTML file, you can publish it as a static
site almost anywhere. Two quick options:

- **GitHub Pages**
  1. Push the repository to GitHub.
  2. In the repository settings, enable GitHub Pages for the `main` branch with the
     root directory.
  3. GitHub will host `index.html` at `https://<username>.github.io/<repo>/`.

- **Netlify / Vercel / Render**
  1. Create a new site and connect it to your repository.
  2. Set the build command to `None` (or leave blank) and the publish directory to the
     repository root (`/`).
  3. Deploy—each provider will serve `index.html` automatically.

## Run the SwiftUI prototype on iOS

1. From a macOS machine, open `ios/RoarApp/RoarApp.xcodeproj` in Xcode.
2. Select the `RoarApp` target and choose an iOS simulator (or a connected device).
3. Press **Run** (⌘ + R). Xcode will build and launch the SwiftUI preview on the
   selected device.
4. For SwiftUI canvas previews, open `RoarAppApp.swift` or `WelcomeView.swift`, then
   press the **Canvas** button in the top-right of the editor.

## Testing checklist

- ✅ Web landing page loads without console errors in desktop and mobile browsers.
- ✅ SwiftUI project builds successfully for the latest iOS target in Xcode.
- ✅ Assets referenced in `Assets.xcassets` appear correctly in previews.

Following the steps above should make it straightforward to iterate locally and share
new builds with others.
