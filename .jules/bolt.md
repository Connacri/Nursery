## 2025-01-24 - [Dashboard Scrolling Optimization]
**Learning:** Found widespread use of SingleChildScrollView + ListView(shrinkWrap: true) anti-pattern. This causes the entire list to be laid out at once, leading to performance degradation as data grows.
**Action:** Use CustomScrollView with Slivers (SliverList, SliverGrid) to allow proper lazy loading and maintain a single scroll context.
