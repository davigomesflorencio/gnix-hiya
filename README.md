# gnix-hiya 

A modern SwiftUI application demonstrating the power of **Apple Intelligence** using on-device Large Language Models (LLMs) via the `FoundationModels` framework.

## 🚀 Overview

`gnix-hiya` is an experimental iOS project designed to showcase high-performance, private, and offline natural language processing. By leveraging Apple's native `LanguageModelSession`, the app provides a seamless and interactive "fun hi" experience directly on the device.

## ✨ Features

- **Apple Intelligence Integration**: Utilizes the native `SystemLanguageModel` and `LanguageModelSession`.
- **On-Device Processing**: High privacy and low latency by running the LLM locally.
- **Dynamic UI**: A glassmorphic, purple-tinted interface built with SwiftUI.
- **Availability Handling**: Robust checks for Apple Intelligence availability, eligibility, and model readiness.
- **Smooth Animations**: Interactive button effects and progress indicators for a premium feel.

## 🛠 Tech Stack

- **Language**: Swift 6.0+
- **Framework**: SwiftUI
- **AI Framework**: `FoundationModels` (Apple Intelligence)
- **Design**: Vanilla CSS-inspired SwiftUI styling with Glassmorphism.

## 📋 Prerequisites

To run this project, you will need:

- **Xcode 16.0+**
- **iOS 18.0+** or **macOS 15.0+**
- A device compatible with **Apple Intelligence** (e.g., iPhone 15 Pro, M-series Macs/iPads).
- Apple Intelligence enabled in system settings.

## 📥 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/gnix-hiya.git
   ```
2. Open `gnix-hiya.xcodeproj` in Xcode.
3. Ensure your target device/simulator supports Apple Intelligence.
4. Build and Run (**⌘R**).

## 🖥 User Interface

The app features a minimalist and elegant design:

- **Welcome Button**: Triggers the LLM session.
- **Response Display**: Bold, large-title text for IA-generated content.
- **Status Indicators**: Real-time feedback on model availability and loading states.

---

_Created for educational and portfolio purposes to explore the future of on-device AI._
