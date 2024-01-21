# CEU Companion App

## Project Summary
CEU Companion is a mobile and web platform for physical therapists, especially in Arizona, to track Continuing Education Units (CEUs) and manage credentials such as CSCS, CPR, Cert TDN, etc. It simplifies the management of licensure requirements with features like file storage, progress tracking, course suggestions, and renewal reminders.

## Key Features
1. **CEU Tracking**: Monitor and catalogue CEUs to meet licensure requirements.
2. **Credential Management**: Keep track of credential expiry dates and renewals.
3. **Google Drive Integration**: Access and store CEU-related documents.
4. **Course Suggestions**: Receive course recommendations based on criteria.
5. **Reminders**: Get notified about CEU and credential deadlines.

## Target Platforms
- Mobile (Optimized for Samsung Galaxy S22 Ultra)
- Web (Optimized for standard 16:9 monitors)

## Technology Stack
- **Frontend**: Flutter (Version: specify version)
- **Backend Services**: Firebase (Realtime Database, Authentication)
- **Data Sources**: APTA AZ, MedBridge, PhysicalTherapy.com

## Getting Started
To run this project locally, follow these steps:

1. Clone the repo:
   ```bash
   git clone https://github.com/Mdrapkin18/CEU_Companion.git
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   ```bash
   flutter run
   ```

## Coding Conventions
Refer to the [Flutter style guide](https://flutter.dev/docs/development/style) for coding standards. Ensure all contributions are well-formatted and documented.

## Contribution Process
- Fork the repository and create your branch from `main`.
- Make your changes and test them.
- Submit a pull request targeting the `main` branch.

## Current Issues/Challenges
- State management for real-time updates.
- Google Drive API integration for document management.
- Localization for multi-language support.

## Feature Roadmap
- Implement state management using Provider.
- Integrate with Google Drive for file storage.
- Add localization for Spanish language support.

## Performance Optimization
Use the Flutter DevTools suite for profiling and optimizing performance issues.
