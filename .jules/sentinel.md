# Sentinel's Journal 🛡️

## 2024-05-22 - [Local Data Exposure Risk]
**Vulnerability:** Android application allows automatic backups by default (`android:allowBackup="true"`).
**Learning:** In enterprise applications handling PII (Personally Identifiable Information) like NurseryOS, local data can be extracted via ADB backup if physical access is obtained, bypassing standard OS protections for non-rooted devices.
**Prevention:** Explicitly set `android:allowBackup="false"` in `AndroidManifest.xml` unless a secure, encrypted backup transport is specifically required and implemented.

## 2024-05-22 - [Weak Input Validation]
**Vulnerability:** Login form lacked length constraints and used weak email validation regex.
**Learning:** Lack of length limits on input fields can lead to application-level DoS or unexpected behavior in downstream services (Supabase/Firebase). Weak regex allows malformed data to reach authentication providers.
**Prevention:** Always implement strict length limits (e.g., 255 for email, 128 for passwords) and use RFC-compliant email validation patterns.
