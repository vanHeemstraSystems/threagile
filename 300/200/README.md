# 200 - Create a Threagile Stub Model (Optional)

Run the following command to create a Threagile Stub Model:

```
$ docker run --rm -it -v "$(pwd)":/app/work threagile/threagile -create-stub-model -output /app/work
```

Or use the script ```threagile.sh``` on Linux / macOS:

```
$ ./threagile.sh -create-stub-model -output /app/work
```

Or use the script ```threagile.bat``` on Windows:

```
$ threagile.sh -create-stub-model -output /app/work
```

**NOTE**: If you get a notification ```Permission Denied```, set the file access permission to executable with ```$ chmod +x threagile.sh```.

**NOTE**: If you get a notification ```open /app/work/threagile-stub-model.yaml: permission denied```, run the following command to make the file writeable for the ```owner``` and the ```group``` and ```others``` of the ```threagile-stub-model.yaml``` file:

```
$ chmod gu+w threagile-stub-model.yaml
```

You will be prompted as folows:

```
A minimal stub model was created named threagile-stub-model.yaml in the output directory.
```

Now you can look at the content of the ```threagile-stub-model.yaml``` file:

```text title="threagile-stub-model.yaml"
threagile_version: 1.0.0

# NOTE:
#
# For a perfect editing experience within your IDE of choice you can easily
# get model syntax validation and autocompletion (very handy for enum values)
# as well as live templates: Just import the schema.json into your IDE and assign
# it as "schema" to each Threagile YAML file. Also try to import individual parts
# from the live-templates.txt file into your IDE as live editing templates.
#
# You might also want to try the REST API when running in server mode...


# This is only a stub for simple quick editing and is not complete.
# For a complete usable example model see the "-create-example-model" option.


title: Model Stub

date: 2020-03-31

author:
  name: John Doe
  homepage: www.example.com




management_summary_comment: >
  Just some <b>more</b> custom summary possible here...

business_criticality: important # values: archive, operational, important, critical, mission-critical




business_overview:
  description: Some more <i>demo text</i> here and even images...
  images:
#    - custom-image-1.png: Some dummy image 1
#    - custom-image-2.png: Some dummy image 2


technical_overview:
  description: Some more <i>demo text</i> here and even images...
  images:
#    - custom-image-1.png: Some dummy image 1
#    - custom-image-2.png: Some dummy image 2



questions: # simply use "" as answer to signal "unanswered"
  Some question without an answer?: ""
  Some question with an answer?: >
    Some answer



abuse_cases:
  Some Abuse Case: >
    Some Description


security_requirements:
  Some Security Requirement: Some Description



# Tags can be used for anything, it's just a tag. Also risk rules can act based on tags if you like.
# Tags can be used for example to name the products used (which is more concrete than the technology types that only specify the type)
tags_available:
  - aws
  - aws:apigateway
  - aws:dynamodb
  - aws:ebs
  - aws:ec2
  - aws:iam
  - aws:lambda
  - aws:rds
  - aws:s3
  - aws:sqs
  - aws:vpc
  - azure
  - docker
  - gcp
  - git
  - kubernetes
  - nexus
  - ocp
  - openshift
  - tomcat
  - some-tag
  - some-other-tag




data_assets:

  Some Data Asset:
    id: some-data
    description: Some Description
    usage: business # values: business, devops
    tags:
    origin: Some Origin
    owner: Some Owner
    quantity: many # values: very-few, few, many, very-many
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: operational # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification



technical_assets:

  Some Technical Asset:
    id: some-component
    description: Some Description
    type: process # values: external-entity, process, datastore
    usage: business # values: business, devops
    used_as_client_by_human: false
    out_of_scope: false
    justification_out_of_scope:
    size: component # values: system, service, application, component
    technology: web-service-rest # values: see help
    tags:
      - some-tag
      - some-other-tag
    internet: false
    machine: virtual # values: physical, virtual, container, serverless
    encryption: none # values: none, transparent, data-with-symmetric-shared-key, data-with-asymmetric-shared-key, data-with-enduser-individual-key
    owner: Some Owner
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: critical # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification
    multi_tenant: false
    redundant: false
    custom_developed_parts: true
    data_assets_processed: # sequence of IDs to reference
      - some-data
    data_assets_stored: # sequence of IDs to reference
    data_formats_accepted: # sequence of formats like: json, xml, serialization, file, csv
      - xml
    communication_links:
      Some Traffic:
        target: some-other-component
        description: Some Description
        protocol: https # values: see help
        authentication: none # values: none, credentials, session-id, token, client-certificate, two-factor
        authorization: none # values: none, technical-user, enduser-identity-propagation
        tags:
        vpn: false
        ip_filtered: false
        readonly: false
        usage: business # values: business, devops
        data_assets_sent: # sequence of IDs to reference
          - some-data
        data_assets_received: # sequence of IDs to reference


  Some Other Technical Asset:
    id: some-other-component
    description: Some Description
    type: process # values: external-entity, process, datastore
    usage: business # values: business, devops
    used_as_client_by_human: false
    out_of_scope: false
    justification_out_of_scope:
    size: component # values: system, service, application, component
    technology: web-service-rest # values: see help
    tags:
      - some-tag
      - some-other-tag
    internet: false
    machine: virtual # values: physical, virtual, container, serverless
    encryption: none # values: none, transparent, data-with-symmetric-shared-key, data-with-asymmetric-shared-key, data-with-enduser-individual-key
    owner: Some Owner
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: critical # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification
    multi_tenant: false
    redundant: false
    custom_developed_parts: true
    data_assets_processed: # sequence of IDs to reference
      - some-data
    data_assets_stored: # sequence of IDs to reference
    data_formats_accepted: # sequence of formats like: json, xml, serialization, file, csv
      - xml
    communication_links:



trust_boundaries:

  Some Trust Boundary:
    id: some-network
    description: Some Description
    type: network-dedicated-hoster # values: see help
    tags:
    technical_assets_inside: # sequence of IDs to reference
      - some-component
    trust_boundaries_nested: # sequence of IDs to reference




shared_runtimes:

  Some Shared Runtime:
    id: some-runtime
    description: Some Description
    tags:
    technical_assets_running: # sequence of IDs to reference
      - some-component
      - some-other-component




individual_risk_categories: # used for adding custom manually identified risks

  Some Individual Risk Example:
    id: something-strange
    description: Some text describing the risk category...
    impact: Some text describing the impact...
    asvs: V0 - Something Strange
    cheat_sheet: https://example.com
    action: Some text describing the action...
    mitigation: Some text describing the mitigation...
    check: Check if XYZ...
    function: business-side # values: business-side, architecture, development, operations
    stride: repudiation # values: spoofing, tampering, repudiation, information-disclosure, denial-of-service, elevation-of-privilege
    detection_logic: Some text describing the detection logic...
    risk_assessment: Some text describing the risk assessment...
    false_positives: Some text describing the most common types of false positives...
    model_failure_possible_reason: false
    cwe: 693
    risks_identified:
      <b>Example Individual Risk</b> at <b>Some Technical Asset</b>:
        severity: critical # values: low, medium, elevated, high, critical
        exploitation_likelihood: likely # values: unlikely, likely, very-likely, frequent
        exploitation_impact: medium # values: low, medium, high, very-high
        data_breach_probability: probable # values: improbable, possible, probable
        data_breach_technical_assets: # list of technical asset IDs which might have data breach
          - some-component
        most_relevant_data_asset:
        most_relevant_technical_asset: some-component
        most_relevant_communication_link:
        most_relevant_trust_boundary:
        most_relevant_shared_runtime:





# NOTE:
# For risk tracking each risk-id needs to be defined (the string with the @ sign in it). These unique risk IDs
# are visible in the PDF report (the small grey string under each risk), the Excel (column "ID"), as well as the JSON responses.
# Some risk IDs have only one @ sign in them, while others multiple. The idea is to allow for unique but still speaking IDs.
# Therefore each risk instance creates its individual ID by taking all affected elements causing the risk to be within an @-delimited part.
# Using wildcards (the * sign) for parts delimited by @ signs allows to handle groups of certain risks at once. Best is to lookup the IDs
# to use in the created Excel file. Alternatively a model macro "seed-risk-tracking" is available that helps in initially
# seeding the risk tracking part here based on already identified and not yet handled risks.
risk_tracking:

  unencrypted-asset@some-component: # wildcards "*" between the @ characters are possible
    status: accepted # values: unchecked, in-discussion, accepted, in-progress, mitigated, false-positive
    justification: Risk accepted as tolerable
    ticket: XYZ-1234
    date: 2020-01-04
    checked_by: John Doe



#diagram_tweak_edge_layout: spline # values: spline, polyline, false, ortho (this suppresses edge labels), curved (this suppresses edge labels and can cause problems with edges)

#diagram_tweak_suppress_edge_labels: true
#diagram_tweak_layout_left_to_right: true
#diagram_tweak_nodesep: 2
#diagram_tweak_ranksep: 2
#diagram_tweak_invisible_connections_between_assets:
#  - tech-asset-source-id-A:tech-asset-target-id-B
#  - tech-asset-source-id-C:tech-asset-target-id-D
#diagram_tweak_same_rank_assets:
#  - tech-asset-source-id-E:tech-asset-target-id-F:tech-asset-source-id-G:tech-asset-target-id-H
#  - tech-asset-source-id-M:tech-asset-target-id-N:tech-asset-source-id-O
```

You can then in your Integrated Development Environment (IDE) - here: Visual Studio Code - or whatever editor you like to edit yaml files with you can fill that.

So you can create those contents like for example some ```data assets``` where you describe the data assets that you're using in your threat model. 

```
data_assets:

  Some Data Asset:
    id: some-data
    description: Some Description
    usage: business # values: business, devops
    tags:
    origin: Some Origin
    owner: Some Owner
    quantity: many # values: very-few, few, many, very-many
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: operational # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification
```

Especially the ```confidentiality```, ```integrity```, and ```availability``` and it has every data asset.

You can have multiple data assets.

It can have some ```id``` and that id is being referenced throughout the other systems.

You can also create ```technical assets``` here:

```
technical_assets:

  Some Technical Asset:
    id: some-component
    description: Some Description
    type: process # values: external-entity, process, datastore
    usage: business # values: business, devops
    used_as_client_by_human: false
    out_of_scope: false
    justification_out_of_scope:
    size: component # values: system, service, application, component
    technology: web-service-rest # values: see help
    tags:
      - some-tag
      - some-other-tag
    internet: false
    machine: virtual # values: physical, virtual, container, serverless
    encryption: none # values: none, transparent, data-with-symmetric-shared-key, data-with-asymmetric-shared-key, data-with-enduser-individual-key
    owner: Some Owner
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: critical # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification
    multi_tenant: false
    redundant: false
    custom_developed_parts: true
    data_assets_processed: # sequence of IDs to reference
      - some-data
    data_assets_stored: # sequence of IDs to reference
    data_formats_accepted: # sequence of formats like: json, xml, serialization, file, csv
      - xml
    communication_links:
      Some Traffic:
        target: some-other-component
        description: Some Description
        protocol: https # values: see help
        authentication: none # values: none, credentials, session-id, token, client-certificate, two-factor
        authorization: none # values: none, technical-user, enduser-identity-propagation
        tags:
        vpn: false
        ip_filtered: false
        readonly: false
        usage: business # values: business, devops
        data_assets_sent: # sequence of IDs to reference
          - some-data
        data_assets_received: # sequence of IDs to reference
```

These technical assets do have some kind of ```confidentiality```, ```integrity```, and ```availability``` rating. 

They do have some ```type``` whether it's an ```external entity```, a ```process```, or ```data store```. 

They do have some ```usage``` here as well so whether it's ```devops``` or ```business```usage.

Whether it's used by ```human``` or ```out of scope``` in total.

And it has some kind of ```technology``` setting and you can even ```tag``` things. 

```Technology``` setting, something we're going to present in a few minutes, is where the the rules basically kick in, the risk rules to determine different risks based on different technologies and how they interoperate.

Also we map on the assets that are being ```processed``` or ```stored```:

```
    data_assets_processed: # sequence of IDs to reference
      - some-data
    data_assets_stored: # sequence of IDs to reference
```

And we have ```communication links``` so every technical asset can have outgoing communication links.

```
    communication_links:
      Some Traffic:
        target: some-other-component
        description: Some Description
        protocol: https # values: see help
        authentication: none # values: none, credentials, session-id, token, client-certificate, two-factor
        authorization: none # values: none, technical-user, enduser-identity-propagation
        tags:
        vpn: false
        ip_filtered: false
        readonly: false
        usage: business # values: business, devops
        data_assets_sent: # sequence of IDs to reference
          - some-data
        data_assets_received: # sequence of IDs to reference
```

You just have to define the ```target``` id, a ```protocol``` - that's also from an enum that we're going to present, it's extendable - and also a little bit more in terms of what data is ```sent``` and eventually ```received```.

Some other technical assets we see here in the stub model, it's a minimal model:

```
  Some Other Technical Asset:
    id: some-other-component
    description: Some Description
    type: process # values: external-entity, process, datastore
    usage: business # values: business, devops
    used_as_client_by_human: false
    out_of_scope: false
    justification_out_of_scope:
    size: component # values: system, service, application, component
    technology: web-service-rest # values: see help
    tags:
      - some-tag
      - some-other-tag
    internet: false
    machine: virtual # values: physical, virtual, container, serverless
    encryption: none # values: none, transparent, data-with-symmetric-shared-key, data-with-asymmetric-shared-key, data-with-enduser-individual-key
    owner: Some Owner
    confidentiality: confidential # values: public, internal, restricted, confidential, strictly-confidential
    integrity: critical # values: archive, operational, important, critical, mission-critical
    availability: critical # values: archive, operational, important, critical, mission-critical
    justification_cia_rating: Some Justification
    multi_tenant: false
    redundant: false
    custom_developed_parts: true
    data_assets_processed: # sequence of IDs to reference
      - some-data
    data_assets_stored: # sequence of IDs to reference
    data_formats_accepted: # sequence of formats like: json, xml, serialization, file, csv
      - xml
    communication_links:
```

Then we define the ```trust boundaries```:

```
trust_boundaries:

  Some Trust Boundary:
    id: some-network
    description: Some Description
    type: network-dedicated-hoster # values: see help
    tags:
    technical_assets_inside: # sequence of IDs to reference
      - some-component
    trust_boundaries_nested: # sequence of IDs to reference
```

A trust boundary, and we can have multiple ones, has an ```id``` and it's a different type; it can be a ```cloud-based network security group``` or just some ```container platform based isolation policy``` or basically some classic ```network based trust boundary on execution environment```. And again you map the ```technical assets``` that are inside this trust boundary and eventually if you do nest trust boundaries then you can nest some other trust boundaries here as well.

Then you can define a ```shared runtime``` or multiple shared runtimes like virtualization engines where the same hardware in terms of availability risk is sharing or being shared across different technical assets:

```
shared_runtimes:

  Some Shared Runtime:
    id: some-runtime
    description: Some Description
    tags:
    technical_assets_running: # sequence of IDs to reference
      - some-component
      - some-other-component
```

You can also add ```custom risks``` but more on this later:

```
individual_risk_categories: # used for adding custom manually identified risks

  Some Individual Risk Example:
    id: something-strange
    description: Some text describing the risk category...
    impact: Some text describing the impact...
    asvs: V0 - Something Strange
    cheat_sheet: https://example.com
    action: Some text describing the action...
    mitigation: Some text describing the mitigation...
    check: Check if XYZ...
    function: business-side # values: business-side, architecture, development, operations
    stride: repudiation # values: spoofing, tampering, repudiation, information-disclosure, denial-of-service, elevation-of-privilege
    detection_logic: Some text describing the detection logic...
    risk_assessment: Some text describing the risk assessment...
    false_positives: Some text describing the most common types of false positives...
    model_failure_possible_reason: false
    cwe: 693
    risks_identified:
      <b>Example Individual Risk</b> at <b>Some Technical Asset</b>:
        severity: critical # values: low, medium, elevated, high, critical
        exploitation_likelihood: likely # values: unlikely, likely, very-likely, frequent
        exploitation_impact: medium # values: low, medium, high, very-high
        data_breach_probability: probable # values: improbable, possible, probable
        data_breach_technical_assets: # list of technical asset IDs which might have data breach
          - some-component
        most_relevant_data_asset:
        most_relevant_technical_asset: some-component
        most_relevant_communication_link:
        most_relevant_trust_boundary:
        most_relevant_shared_runtime:
```

And you can have some ```risk tracking``` here but that's something we're going to present later as well:

```
risk_tracking:

  unencrypted-asset@some-component: # wildcards "*" between the @ characters are possible
    status: accepted # values: unchecked, in-discussion, accepted, in-progress, mitigated, false-positive
    justification: Risk accepted as tolerable
    ticket: XYZ-1234
    date: 2020-01-04
    checked_by: John Doe
```

That's a minimal model and we can extend that in the IDE that should be simple and easy or whatever kind of editor you like - e.g. using intelliJ -  but that really doesn't relate to that kind of IDE. Whatever you like, it could be even VIM but it would be more funny for the presentation to have an ```example model``` and we're going to show you that next.
