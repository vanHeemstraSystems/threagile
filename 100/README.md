# 100 - Introduction

Threat Analysis is not a new concept. It’s being around since the 90s. Threat Modeling is becoming more popular thanks to the [DevSecOps](https://www.devsecops.org/blog/2015/2/15/what-is-devsecops) movement. There are several other open-source Modeling tools such as [OWASP Threat Dragon](https://owasp.org/www-project-threat-dragon/) and [Microsoft Threat Modeling Tool](https://docs.microsoft.com/en-us/azure/security/develop/threat-modeling-tool). 

[Threagile](https://threagile.io/) is an agile and open-source tool for Threat Modeling. The cool thing about Thredagile is that the tool is based on declarative modeling using YAML files. 

[Threagile](https://github.com/Threagile/threagile) is built with Go language. One big advantage of open source software is that we can always look at the source code and even change it if we need it(i.e Understand [how the RAA score works](https://github.com/Threagile/threagile/blob/master/raa/raa/raa.go#L87)). 

Security awareness is something that still needs to be work with engineering and product teams. This tool is a great way to tear down walls between InfoSec and engineering. 

Threagile is also dockerized making it very easy to use and play with it. Easily you can version the YAML file in your service repository and generate the reports as part of your Jenkins Build process for instance. Automation is the right way to go, especially at scale.
