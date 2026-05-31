## 2025-05-14 - [Flutter Dashboard Optimizations]
**Learning:** In Flutter, using helper methods for UI components prevents 'const' optimizations. Extracting them into standalone widgets with 'const' constructors significantly reduces rebuild costs. Additionally, 'MediaQuery.sizeOf(context)' is a more performant alternative to 'MediaQuery.of(context).size' as it only triggers rebuilds when the size changes.
**Action:** Always prefer standalone 'const' widgets over helper methods for static or semi-static UI elements. Use 'MediaQuery.sizeOf' when only dimensions are needed.
