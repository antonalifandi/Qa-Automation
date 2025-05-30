# QA Automation: Cucumber + Selenium WebDriver

Project ini adalah template sederhana untuk UI automation testing menggunakan Ruby, Cucumber, dan Selenium WebDriver.

## 📦 Teknologi

- Ruby
- Cucumber (BDD)
- Selenium WebDriver
- RSpec Expectations
- Parallel Tests

## 🔧 Instalasi

1. **Install Ruby**: [https://rubyinstaller.org](https://rubyinstaller.org) (untuk Windows).
2. **Install dependencies**:
```bash
bundle install
```

## ▶️ Menjalankan Test

### Jalankan semua skenario:
```bash
cucumber
```

### Jalankan test secara paralel:
```bash
bundle exec rake rake_automation_parallel_run
```

## 📦 Struktur Project
.
├── features/
│   ├── login.feature              # Skenario login
│   ├── google_search.feature      # Skenario Google search
│   └── step_definitions/
│       ├── login_steps.rb
│       └── google_steps.rb
├── Gemfile                        # Dependency Ruby
├── Rakefile                       # Task parallel cucumber
├── report.html                    # (jika sudah menjalankan parallel run)
└── README.md