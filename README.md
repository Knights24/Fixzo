<h1 align="center">🛠️ Clapwise (Fixzo)</h1>
<p align="center">
  <i>Smart, real-time home services app built using Flutter & Firebase</i><br/>
  <b>Connects users with plumbers, electricians, carpenters, and more!</b>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-v3.22-blue?logo=flutter" />
  <img src="https://img.shields.io/badge/Firebase-Backend-yellow?logo=firebase" />
  <img src="https://img.shields.io/badge/Platform-Android-blue?logo=android" />
  <img src="https://img.shields.io/badge/License-MIT-green.svg" />
</p>

---

## 📱 About Clapwise

**Clapwise** is a mobile-first application designed to simplify home service bookings. With real-time location tracking, vendor-client separation, and Firebase integration, Clapwise brings convenience and speed to home maintenance tasks.

---

## ✨ Features

- 🔐 Firebase Google Sign-In
- 👥 Role-based Login (Client & Vendor)
- 📍 Google Maps Integration
- 📅 Real-time Booking & Tracking
- 🧰 Vendor Dashboard (Upcoming)
- 🧑‍💻 Clean Flutter UI & Architecture
- 🔥 Firestore-based scalable backend

---

## 🗂️ Project Structure

```bash
lib/
├── core/                  # App theme, constants, helpers
├── data/                  # Firebase services, models
├── features/
│   ├── auth/              # Google login & role setup
│   ├── home/              # Client home UI, location-based service listing
│   ├── bookings/          # Booking workflow
│   └── vendor/            # Vendor-specific pages (Coming Soon)
├── shared/                # Reusable widgets and UI
└── main.dart              # App entry point
