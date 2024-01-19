# CEU Companion App

## Project Summary
CEU Companion is a mobile app and web platform designed for physical therapists, primarily in Arizona, to track Continuing Education Units (CEUs) and manage other credentials such as CSCS, CPR, Cert TDN, etc. The app helps manage licensure requirements with features to store files, track progress, suggest courses, and set reminders for credential renewals.

## Key Features
1. **CEU Tracking**: Monitor CEUs obtained and identify courses needed to fulfill licensure requirements.
2. **Credential Management**: Track various credentials, their expiration dates, and renewal requirements.
3. **Google Drive Integration**: Store and access documentation related to CEUs and credentials.
4. **Course Suggestions**: Provide suggestions for courses based on value, relevance, and deadlines.
5. **Reminders**: Alert users about upcoming deadlines for CEU acquisition and credential renewals.

## Target Platforms
- Mobile (Optimized for Samsung Galaxy S22 Ultra)
- Web (Optimized for standard 16:9 monitors)

## Technology Stack
- **Frontend**: Flutter for cross-platform compatibility
- **Backend Services**: Google Firebase for database, authentication, and Google Drive integration
- **Data Sources**: APTA AZ Approved Courses, MedBridge, PhysicalTherapy.com

## Current State of the Project
The project currently has the basic UI components for listing CEUs, adding new CEUs, and displaying CEU progress. It is set up for cross-platform functionality with a focus on clean and professional design suitable for DPT professionals.

## Next Steps

### Navigation Enhancement
- Implement named routes with arguments for improved navigation and data passing.

### UI/UX Improvements
- Create a style guide for consistent UI components.
- Add animations for screen transitions.

### Error Handling
- Develop comprehensive user input validation and feedback mechanisms in forms.

### State Management
- Integrate a state management solution like Provider to handle app-wide state.

### Refactor and Document
- Refactor repeated code into widgets.
- Document all classes and methods within the codebase.

### Testing
- Establish unit and widget tests for critical app functionalities.

### Accessibility and Internationalization
- Conduct an accessibility audit and ensure compliance.
- Set up the app for easy localization.

### Performance Optimization
- Profile the app and optimize for performance where necessary.

## Code Contribution
Contributions to the project are welcome. Please ensure to follow the project's coding standards and write tests for new features.

## License
Specify the project's license here.