# 0x19. Postmortem

## 0. My first postmortem

### Postmortem: SSL Configuration Outage on HAProxy Server

#### Issue Summary:

#### Duration:
* Start Time: January 20, 2024, 10:15 AM (EAT)

* End Time: January 20, 2024, 11:45 AM (EAT)

#### Impact:
The outage affected the availability of the HAProxy server, resulting in a temporary loss of service.

Users experienced connection errors and were unable to access the services provided by HAProxy.

Approximately 15% of users were affected during the outage.

#### Root Cause:
The root cause of the issue was misconfiguration in the SSL certificate integration from Certbot into the HAProxy server.

#### Timeline:

* 10:15 AM (EAT):
Issue detected through monitoring alerts indicating a sudden spike in connection
errors on the HAProxy server.

* 10:20 AM (EAT):
Engineering team initiated an investigation into the issue, suspecting a potential SSL
certificate misconfiguration.

* 10:30 AM (EAT):
Assumptions were made that the SSL certificate files might be corrupted or
improperly linked in the HAProxy configuration.

* 10:45 AM (EAT):
Further investigation revealed that the SSL certificate path in the HAProxy
configuration file was incorrect, leading to failed certificate loading.

* 11:00 AM (EAT):
The incident was escalated to the DevOps team for immediate resolution.

* 11:15 AM (EAT):
While attempting to address the issue, there was a brief consideration of a possible
server resource exhaustion, leading to a slight delay in the resolution process.

* 11:30 AM (EAT):
The correct SSL certificate path was identified, and the configuration file was updated accordingly.

* 11:45 AM (EAT):
The HAProxy server was successfully restarted, restoring normal service.

#### Root Cause and Resolution:

* Root Cause:
The issue originated from an incorrect SSL certificate path in the HAProxy
configuration, preventing the server from loading the certificates properly.

* Resolution:
The root cause was addressed by correcting the SSL certificate path in the
configuration file.
After the correction, the HAProxy server was restarted, and SSL certificates were
successfully loaded.

#### Corrective and Preventative Measures:

* Improvements/Fixes:
Implement stricter validation checks for SSL certificate paths during the configuration process.
Enhance monitoring for SSL certificate-related metrics to detect potential misconfigurations in real-time.

* Tasks to Address the Issue:
Conduct a comprehensive review of SSL certificate integration processes to identify and rectify any similar misconfigurations.
Develop and implement automated testing procedures for SSL certificate paths in HAProxy configurations
Schedule regular audits of SSL certificate configurations to ensure ongoing accuracy.
Provide additional training to the team on best practices for SSL certificate management and integration.

----------------------------------------------------------------------------------------------------------------------------------------------------

## 1. Make people want to read your postmortem

### Postmortem: SSL Configuration Outage on HAProxy Server

Greetings, brave survivors of the SSLocalypse! Today, we embark on a journey through the perilous lands of HAProxy misconfigurations, where SSL certificates played hide and seek, and the internet briefly thought it was the '90s again.

🚨 Issue Summary:

#### Duration:
Start Time: January 20, 2024, 10:15 AM (EAT)
End Time: January 20, 2024, 11:45 AM (EAT)

#### Impact:
The HAProxy server went on an unexpected coffee break, leaving users with
connection withdrawal symptoms.
Users were caught in a digital Bermuda Triangle, experiencing connection errors and contemplating life without load balancing.
Approximately 15% of users sent postcards to our support team asking, "Where did the website go?"

#### Root Cause:
Picture this:

SSL certificates playing hide-and-seek, and HAProxy playing "I Spy" with misconfigurations. Turns out, the SSL certificate path was trying out its invisibility cloak in the wrong directory.

🕰️ Timeline:

* 10:15 AM (EAT):
Our monitors screamed louder than a teenager at a rock concert, alerting us to the sudden chaos in HAProxy land.

* 10:20 AM (EAT):
Our heroic engineering team, armed with keyboards and coffee, dove headfirst into the abyss of connection errors, suspecting SSL mischievousness.

* 10:30 AM (EAT):
Assumption 1: SSL certificates were partying too hard.
Assumption 2: Gremlins.
Spoiler: It was neither.

* 10:45 AM (EAT):
Unmasked the villain! The SSL certificate path was caught red-handed, masquerading in the wrong directory.

* 11:00 AM (EAT):
Distress signals sent to the DevOps team; turns out, they don't like disturbances during their morning coffee either.

* 11:15 AM (EAT):
Briefly considered the possibility of server exhaustion. Turns out, the servers were just hangry.

* 11:30 AM (EAT):
Found the missing SSL certificate path, gave it a stern talking-to, and updated the HAProxy config.

11:45 AM (EAT):
* Restarted HAProxy—cue the triumphant music! The server dusted off its shoulders, and the internet sighed in relief.

🔍 Root Cause and Resolution:

#### Root Cause:
SSL certificates playing hide-and-seek in the wrong directory, masquerading as invisible wizards.

#### Resolution:
Unveiled the invisible certificates, corrected the path, and performed the ancient ritual of server restart. Presto! The internet returned to normal.

🚀 Corrective and Preventative Measures:

#### Improvements/Fixes:
Instituted a mandatory SSL certificate checklist, complete with a "Where’s Waldo" edition.

Developed a system to send SSL certificates to timeout if they misbehave.

Implemented a daily standup for SSL certificates to discuss their feelings and concerns.

#### Tasks to Address the Issue:
Scheduled regular SSL certificate therapy sessions for emotional well-being.

Introduced a new company policy: SSL certificates must attend a misconfiguration
awareness seminar.

Deployed an SSL certificate guardian to ensure they stay on the right path.
