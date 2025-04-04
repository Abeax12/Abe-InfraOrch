**Report I: Virtual Environment Setup and Service Configuration**

**Objective:**

The goal of this simulation was to review the decisions made previously regarding the setup of key services within a virtualized environment. The environment was configured using VMware to create three virtual machines (VMs) on my PC. We leveraged Terraform, Ansible, GitHub, and VS Code for various tasks in the setup process.

**Infrastructure Setup:**

**Infra Server (Control Plane):**
  - Ansible: Automates IT infrastructure tasks, including provisioning, configuration, and orchestration of services.
  - Elastic Stack: A set of tools (Elasticsearch, Logstash, Kibana, and Beats) used to monitor and analyze infrastructure logs and metrics.

**Mail Server:**
  - Postfix: A mail transfer agent (MTA) to route and deliver email.
  - Dovecot: An IMAP and POP3 server for email retrieval.
  - Mailman: Mailing list manager for handling email list subscriptions.
  - Rspamd: A spam filtering system for emails.
  - ClamAV: An antivirus engine to scan emails for malware.

**AD/DNS Server:**
  - Samba4 Active Directory: Provides Active Directory domain services.
  - BIND9 DNS: A DNS server to handle name resolution for the domain.

**Current Status:**
At present, we are in the process of testing the functionality of the configured environment. This involves ensuring that all services and automation workflows are operating as intended.
